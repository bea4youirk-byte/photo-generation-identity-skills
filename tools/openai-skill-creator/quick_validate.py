#!/usr/bin/env python3
"""Pinned OpenAI quick skill validator."""
import re
import sys
from pathlib import Path
import yaml

MAX_SKILL_NAME_LENGTH = 64


def validate_skill(skill_path):
    skill_path = Path(skill_path)
    skill_md = skill_path / "SKILL.md"
    if not skill_md.exists():
        return False, "SKILL.md not found"
    content = skill_md.read_text(encoding="utf-8")
    if not content.startswith("---"):
        return False, "No YAML frontmatter found"
    match = re.match(r"^---\n(.*?)\n---", content, re.DOTALL)
    if not match:
        return False, "Invalid frontmatter format"
    try:
        frontmatter = yaml.safe_load(match.group(1))
        if not isinstance(frontmatter, dict):
            return False, "Frontmatter must be a YAML dictionary"
    except yaml.YAMLError as exc:
        return False, f"Invalid YAML in frontmatter: {exc}"
    allowed = {"name", "description", "license", "allowed-tools", "metadata"}
    unexpected = set(frontmatter) - allowed
    if unexpected:
        return False, f"Unexpected key(s): {', '.join(sorted(unexpected))}"
    if "name" not in frontmatter:
        return False, "Missing 'name' in frontmatter"
    if "description" not in frontmatter:
        return False, "Missing 'description' in frontmatter"
    name = frontmatter.get("name", "")
    if not isinstance(name, str):
        return False, "Name must be a string"
    name = name.strip()
    if not re.match(r"^[a-z0-9-]+$", name):
        return False, "Name must be hyphen-case"
    if name.startswith("-") or name.endswith("-") or "--" in name:
        return False, "Invalid hyphen placement"
    if len(name) > MAX_SKILL_NAME_LENGTH:
        return False, "Name is too long"
    description = frontmatter.get("description", "")
    if not isinstance(description, str):
        return False, "Description must be a string"
    description = description.strip()
    if "<" in description or ">" in description:
        return False, "Description cannot contain angle brackets"
    if len(description) > 1024:
        return False, "Description is too long"
    return True, "Skill is valid!"


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python quick_validate.py <skill_directory>")
        raise SystemExit(1)
    valid, message = validate_skill(sys.argv[1])
    print(message)
    raise SystemExit(0 if valid else 1)
