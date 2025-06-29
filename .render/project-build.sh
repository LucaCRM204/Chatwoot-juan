#!/bin/bash
echo "Instalando dependencias..."
corepack enable
corepack prepare yarn@1.22.22 --activate
yarn install

echo "Compilando assets..."
RAILS_ENV=production bundle exec rake assets:precompile
