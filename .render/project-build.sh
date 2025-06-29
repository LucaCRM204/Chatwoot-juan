#!/usr/bin/env bash

echo "Usando Node 18 para compilación"

nvm install 18
nvm use 18

bundle install
bundle binstubs bundler --force
yarn install
yarn build#!/bin/bash
echo "Instalando dependencias..."
corepack enable
corepack prepare yarn@1.22.22 --activate
yarn install

echo "Compilando assets..."
RAILS_ENV=production bundle exec rake assets:precompile
