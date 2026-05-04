#!/bin/bash
# Discovery Orchestrator v2.0.3 — Installer for Claude Code
# Zero dependencies. Only requires Claude Code CLI.

set -e

SKILLS_DIR="$HOME/.claude/skills"
TARGET="$SKILLS_DIR/discovery-orchestrator"

echo "Discovery Orchestrator v2.0.3 — Installer"
echo "========================================="

# Check Claude Code skills directory
if [ ! -d "$SKILLS_DIR" ]; then
    echo "Creating skills directory..."
    mkdir -p "$SKILLS_DIR"
fi

# Remove existing installation
if [ -d "$TARGET" ]; then
    echo "Updating existing installation..."
    rm -rf "$TARGET"
fi

# Copy skill files
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cp -r "$SCRIPT_DIR" "$TARGET"

# Remove installer from target
rm -f "$TARGET/install.sh"
rm -rf "$TARGET/.git"

# Verify
if [ -f "$TARGET/SKILL.md" ]; then
    echo ""
    echo "Installation successful!"
    echo "Location: $TARGET"
    echo ""
    echo "Usage:"
    echo "  In Claude Code, type: /discovery-orchestrator [your context]"
    echo ""
    echo "Modes: Rapid | Structured | Deep"
    echo "Domains: software | product-ux | ai-projects | consulting | internal-tools | personal"
else
    echo "Error: Installation failed. Check file permissions."
    exit 1
fi
