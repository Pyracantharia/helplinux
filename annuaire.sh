ajouter_contact() {
    read -p "Nom: " nom
    read -p "Numéro: " numero

    # R  cup  rer le dernier ID dans le fichier ou
 initialiser    0 s'il n'y a pas d'ID
    dernier_id=$(tail -n 1 annuaire.csv | cut -d';' -f
1 2>/dev/null)
    if [ -z "$dernier_id" ]; then
        dernier_id=0
    fi

    # Incr  menter l'ID
    nouvel_id=$((dernier_id + 1))

    # Ajouter le contact au fichier CSV
    echo "${nouvel_id};${nom};${numero}" >> annuaire
.csv

    echo "Contact ajouté"
}

# Menu principal
while true; do
    echo "1) Ajouter un contact"
    echo "5) Quitter"
    read -p "Votre choix: " choix

    case $choix in

