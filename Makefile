all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n## Date et heure de génération" >> README.md
	echo "\n$(shell date)" >> README.md
	echo "\n## Nombre de lignes dans guessinggame.sh" >> README.md
	echo "\n$(shell wc -l < guessinggame.sh) lignes" >> README.md
