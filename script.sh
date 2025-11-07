#!bin/bash
echo "Vérification des installation demandés."
echo "Recherche de php"
if command -v php; then
    echo "php est déjà installé."
else
    echo "php n'est pas sur le système, intallation en cours .... "
    sudo apt install php
    echo "php est maintenant installé"
fi
echo "Recherche de composer"
if command -v composer; then
    echo "Composer est installé" 
else 
    echo Composer n'est pas installé, installation de Composer en cours...."
    sudo apt install composer
    echo "Composer est maintenant installé"
    fi

touch index.php
echo "<?php phpinfo(); ?>" >> index.php
php -S 127.0.0.1:8000
    