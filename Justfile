preview:
  glow $(find . -type f -iname "*.md" | fzf)

dev:
	hugo server --disableFastRender
