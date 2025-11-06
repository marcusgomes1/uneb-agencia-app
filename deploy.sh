#!/bin/bash
echo "🚀 Iniciando deploy do projeto Agência de Comunicação UNEB..."

# Verifica se o repositório já existe
if [ ! -d .git ]; then
  git init
  echo "✅ Repositório Git inicializado."
else
  echo "🔄 Repositório Git já existente."
fi

# Adiciona e faz commit
git add .
git commit -m "🚀 Publicação inicial do site Agência de Comunicação UNEB" || echo "Nada para commitar"

# Garante que a branch principal é main
git branch -M main

# Adiciona remoto
read -p "Digite seu nome de usuário no GitHub: " GITHUB_USER
REPO_URL="https://github.com/$GITHUB_USER/agencia-uneb-site.git"

git remote add origin $REPO_URL 2>/dev/null || git remote set-url origin $REPO_URL
echo "🔗 Repositório remoto configurado em: $REPO_URL"

# Faz o push
git push -u origin main

echo "✅ Projeto enviado com sucesso para o GitHub!"
echo "🌐 Acesse: https://$GITHUB_USER.github.io/agencia-uneb-site"
