#!/bin/bash
# Discovery Orchestrator v2.1.0 — Installer for Hermes Agent
# Zero dependencies. Native Hermes skill.

set -e

SKILLS_DIR="$HOME/.hermes/skills"
TARGET="$SKILLS_DIR/discovery-orchestrator"

echo "Discovery Orchestrator v2.1.0 — Hermes Installer"
echo "=================================================="

# Determine script location (hermes/ subdirectory)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"

# Check Hermes skills directory
if [ ! -d "$SKILLS_DIR" ]; then
    echo "Creating Hermes skills directory..."
    mkdir -p "$SKILLS_DIR"
fi

# Remove existing installation
if [ -d "$TARGET" ]; then
    echo "Updating existing installation..."
    rm -rf "$TARGET"
fi

# Create target
mkdir -p "$TARGET"

# Copy Hermes-specific SKILL.md
cp "$SCRIPT_DIR/SKILL.md" "$TARGET/SKILL.md"

# Copy shared content (experts, phases, adapters, templates, scoring, examples)
for dir in experts phases adapters templates scoring examples; do
    if [ -d "$PROJECT_ROOT/$dir" ]; then
        cp -r "$PROJECT_ROOT/$dir" "$TARGET/$dir"
    fi
done

# Copy license if present
[ -f "$PROJECT_ROOT/LICENSE" ] && cp "$PROJECT_ROOT/LICENSE" "$TARGET/LICENSE"

# Clean up non-skill files from target
rm -rf "$TARGET/.git"
rm -rf "$TARGET/hermes"
rm -f "$TARGET/install.sh"

# Verify
if [ -f "$TARGET/SKILL.md" ]; then
    echo ""
    echo "Installation successful!"
    echo "Location: $TARGET"
    echo ""
    echo "Usage:"
    echo "  In Hermes Agent, invoke: discovery-orchestrator [your context]"
    echo ""
    echo "Modes: Rapid | Structured | Deep"
    echo "Domains: software | product-ux | ai-projects | consulting | internal-tools | personal"
else
    echo "Error: Installation failed. Check file permissions."
    exit 1
fi
