LSB_RELEASE_D="$(lsb_release -d | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_R="$(lsb_release -r | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_C="$(lsb_release -c | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"

echo $whoami "Welcome to HEDONIST, running on ""${LSB_RELEASE_D}" "${LSB_RELEASE_R}", "${LSB_RELEASE_C}".

echo -e ""

echo "Installing some basic packages"

sudo pacman -S yay screen