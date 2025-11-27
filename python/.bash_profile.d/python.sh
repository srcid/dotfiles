export PYTHON_HISTORY=$HOME/.cache/python/history

[ -f $PYTHON_HISTORY ] || mkdir -p ${PYTHON_HISTORY%/*} && touch $PYTHON_HISTORY