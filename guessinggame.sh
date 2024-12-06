#!/bin/bash

# Fonction pour obtenir le nombre de fichiers dans le répertoire actuel
function count_files {
    echo $(ls -1 | wc -l)
}

# Initialiser la réponse correcte
correct_count=$(count_files)

echo "Bienvenue dans le jeu de devinettes !"
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel :"

# Boucle principale pour demander des devinettes
while true; do
    read -p "Entrez votre estimation : " guess

    # Vérifier si l'entrée est un nombre
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    # Comparer la devinette avec la réponse correcte
    if [[ $guess -lt $correct_count ]]; then
        echo "Trop bas, essayez encore !"
    elif [[ $guess -gt $correct_count ]]; then
        echo "Trop haut, essayez encore !"
    else
        echo "Félicitations ! Vous avez trouvé le bon nombre : $correct_count."
        break
    fi
done
