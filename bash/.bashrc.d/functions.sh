psfind() {
	ps aux | sed -n -e{'1p',"/$1/p"}
}

printemojis() {
	echo -e "[😀][🍑][🍆][🤤][🏳️‍🌈][🇺🇸][\uf303][\uf30a][\uf31b][󰕈][\udb81\udd48]"
}

randint() {
  start=$1
  end=$2
  echo $(( RANDOM % (end - start + 1) + start ))
}