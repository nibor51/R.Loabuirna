#!/bin/bash
# Gestion des variables et des fonctions

. colors.sh

bienvenue="
*******************************************************************************************
*                                                                                         *
*    Bienvenue sur ${blue}R.Loabuirna${default}, le programme qui vous permet de crypter vos messages !    *
*                                                                                         *
*                                                                                         *
*                                                                                         *
*******************************************************************************************"

debut="
*******************************************************************************************
*                                                                                         *"

fin="*                                                                                         *
*******************************************************************************************"

alert="*                                                                                         *
*                                    ${red}/!\ ATTENTION /!\ ${default}                                   *
*                  Ne pas utiliser de caractères spéciaux ou numériques !                 *
*   Pour l'utilisation de caractères numériques, veuillez convertir en chiffre Romain !   *"

error="*                                     Erreur saisie !                                     *
*                                 ${red}Attention à la casse !${default}                                  *"

thumbs="*                                                                                         *
*                                             ${magenta}████${default}                                        *
*                                             ${magenta}█████${default}                                       *
*                                             ${magenta}██████${default}                                      *
*                                             ${magenta}███████${default}                                     *
*                                            ${magenta}████████${default}                                     *
*                                            ${magenta}████████${default}                                     *
*                                           ${magenta}█████████${default}                                     *
*                                          ${magenta}█████████${default}                                      *
*                                         ${magenta}█████████${default}                                       *
*                                        ${magenta}█████████${default}                                        *
*                                        ${magenta}██████████████████${default}                               *
*                                      ${magenta}█████████████████████${default}                              *
*                                     ${magenta}███████████████████████${default}                             *
*                          ${magenta}████████─██████████████████████████${default}                            *
*                          ${magenta}████████─███████████████████████████${default}                           *
*                          ${magenta}████████─████████████████████████████${default}                          *
*                          ${magenta}████████─████████████████████████████${default}                          *
*                          ${magenta}████████─████████████████████████████${default}                          *
*                          ${magenta}████████─████████████████████████████${default}                          *
*                          ${magenta}████████─███████████████████████████${default}                           *
*                          ${magenta}████████─██████████████████████████${default}                            *
*                          ${magenta}████████─█████████████████████████${default}                             *
*                          ${magenta}████████─████████████████████████${default}                              *
*                          ${magenta}████████─███████████████████████${default}                               *"


errorSaisie() {
  clear
  echo -e "$bienvenue"
  echo "$debut"
  echo -e "$error"
  echo "$fin"
  sleep 2
  continue
}

register() {
  echo "$texteACoder" | tr 'A-Za-z' 'N-ZA-Mn-za-m' > $choix2.txt
  echo "$debut"
  echo "*                      Votre message codé a bien était enregistrer !                      *"
  echo -e "$thumbs"
  echo "$fin"
  sleep 2
  continue
}

endProg() {
  clear
  #message au revoir
  echo "$debut"
  echo ""
  echo ""
  echo ""
  echo ""
  echo ""
  echo ""
  echo ""
  echo ""
  echo "$fin"
  sleep 3
}

decode() {
  clear
  echo -e "$bienvenue"
  echo "$debut"
  echo "*                   Voici le message que vous avez décider de decoder :                   *"
  echo "$fin"
  echo ""
  echo "          $texteACoder" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
  echo "$debut"
  echo "*                      Voulez vous enregistrer votre message ? (1/2)                      *"
  echo "$fin"
  select choix3 in Oui Non
    do
      case $choix3 in
        "Oui")
        register
        break ;;
        "Non")
        break ;;
      esac
  done
}

code() {
  clear
  echo -e "$bienvenue"
  echo "$debut"
  echo "*                    Voici le message que vous avez décider de coder :                    *"
  echo "$fin"
  echo ""
  echo "          $texteACoder" | tr 'A-Za-z' 'N-ZA-Mn-za-m'
  echo ""
  echo "$debut"
  echo "*                      Voulez vous enregistrer votre message ? (1/2)                      *"
  echo "$fin"
  select choix3 in Oui Non
    do
      case $choix3 in
        "Oui")
        register
        break ;;
        "Non")
        break ;;
      esac
  done
}
