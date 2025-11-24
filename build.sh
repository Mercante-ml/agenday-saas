#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt

# Coleta os arquivos estáticos (CSS/JS) para a pasta certa
python manage.py collectstatic --noinput

# Aplica migrações (mesmo que não usemos o app agora, o Django exige isso para rodar)
python manage.py migrate