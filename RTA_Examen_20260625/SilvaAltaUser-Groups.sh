#!/bin/bash

USUARIO_CLAVE=$1
ARCHIVO=$2

CLAVE=$(sudo grep "^$USUARIO_CLAVE:" /etc/shadow | cut -d: -f2)

while IFS=',' read -r USUARIO GRUPO HOME_DIR; do
    [[ "$USUARIO" =~ ^#.*$ ]] && continue
    [ -z "$USUARIO" ] && continue

    if ! getent group "$GRUPO" > /dev/null 2>&1; then
        sudo groupadd "$GRUPO"
    fi

    if ! id "$USUARIO" > /dev/null 2>&1; then
        sudo useradd -m -d "$HOME_DIR" -g "$GRUPO" -p "$CLAVE" "$USUARIO"
    fi

done < "$ARCHIVO"
