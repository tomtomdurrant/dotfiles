# User configuration
checkFont() {
    echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"
}


# This syntax is specific to zsh
function how_in() {
  where="$1"
  url=https://cht.sh/$where/"$@[2,-1]"
  echo "Searching ${url}"
  curl ${url}
}
