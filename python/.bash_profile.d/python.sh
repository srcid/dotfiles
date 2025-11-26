export PYTHON_HISTORY=$HOME/.local/share/python/history

[ -f $PYTHON_HISTORY ] || mkdir -p ${PYTHON_HISTORY%/*} && touch $PYTHON_HISTORY