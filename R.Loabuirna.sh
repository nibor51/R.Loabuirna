#!/bin/bash

. colors.sh
. param.sh
choix="y"

while test [ "$choix" != "n" ] || [ "$choix" != "N" ]; do
    clear
    echo -e "$bienvenue"
    echo "$debut"
    echo "*                 Voulez vous coder ou decoder un message ? (code/decode)                 *"
    echo "$fin"
    read choix2
      if [ "$choix2" = "code" ] || [ "$choix2" = "CODE" ] ; then
          clear
          echo -e "$bienvenue"
          echo "$debut"
          echo "*                  Veuillez saisir le message que vous souhaitez coder :                  *"
          echo -e "$alert"
          echo "$fin"
          echo ""
          read texteACoder
          code
      elif [ "$choix2" = "decode" ] || [ "$choix2" = "DECODE" ] ; then
          clear
          echo -e "$bienvenue"
          echo "$debut"
          echo "*                 Veuillez saisir le message que vous souhaitez decoder :                 *"
          echo -e "$alert"
          echo "$fin"
          echo ""
          read texteACoder
          decode
      fi
    clear
    echo -e "$bienvenue"
    echo "$debut"
    echo "*                        Voulez vous continuer le programme ? (1/2)                       *"
    echo "$fin "
    select choix in Oui Non
      do
        case $choix in
          "Oui")
          break ;;
          "Non")
          endProg
          clear
          exit 0;
        esac
    done
done
