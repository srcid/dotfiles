export ASDF_CONFIG_FILE=$HOME/.config/asdf/asdfrc
export ASDF_DATA_DIR=$HOME/.local/opt/asdf
export PATH=$ASDF_DATA_DIR/shims:$PATH

type asdf &> /dev/null || return 0

export FLUTTER_ROOT="$(asdf where flutter)"
