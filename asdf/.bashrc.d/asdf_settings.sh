export ASDF_CONFIG_FILE=$HOME/.config/asdf/asdfrc
export ASDF_DIR=$HOME/.local/asdf/core
export ASDF_DATA_DIR=$HOME/.local/asdf/data

. "$ASDF_DIR/asdf.sh"
. "$ASDF_DIR/completions/asdf.bash"

export FLUTTER_ROOT="$(asdf where flutter)"
