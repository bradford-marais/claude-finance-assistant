#!/usr/bin/env bash
# One-time setup: adds shortcut aliases that jump into this workspace and
# launch Claude Code straight into /prime.
#
#   cs  → normal               (claude "/prime")
#   cr  → skip permissions     (claude --dangerously-skip-permissions "/prime")
#   ca  → auto mode            (claude --enable-auto-mode "/prime")
#
# Run once:  bash setup-aliases.sh

set -euo pipefail

WORKSPACE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -n "${ZSH_VERSION:-}" ] || [ "$(basename "${SHELL:-}")" = "zsh" ]; then
  RC="$HOME/.zshrc"
else
  RC="$HOME/.bashrc"
fi
touch "$RC"

MARKER="# >>> claude-finance-assistant aliases >>>"
if grep -qF "$MARKER" "$RC"; then
  echo "Aliases already installed in $RC — nothing to do."
  exit 0
fi

cat >> "$RC" <<EOF

$MARKER
alias cs='cd "$WORKSPACE" && claude "/prime"'
alias cr='cd "$WORKSPACE" && claude --dangerously-skip-permissions "/prime"'
alias ca='cd "$WORKSPACE" && claude --enable-auto-mode "/prime"'
# <<< claude-finance-assistant aliases <<<
EOF

echo "Added cs / cr / ca to $RC"
echo "Run 'source $RC' (or open a new terminal), then type cs to start."
