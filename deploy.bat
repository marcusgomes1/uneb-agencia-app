\
@echo off
title 🚀 Deploy - Agência de Comunicação UNEB
color 0A
echo ===========================================
echo 🚀 Iniciando deploy do projeto UNEB...
echo ===========================================

REM Verifica se existe repositório Git
if not exist ".git" (
    git init
    echo ✅ Repositório Git inicializado.
) else (
    echo 🔄 Repositório Git já existente.
)

REM Adiciona arquivos e faz commit
git add .
git commit -m "🚀 Publicação inicial do site Agência de Comunicação UNEB" 2>nul || echo Nada para commitar

REM Garante que a branch principal é main
git branch -M main

REM Pede nome de usuário do GitHub
set /p GITHUB_USER=Digite seu nome de usuário do GitHub: 

REM Configura repositório remoto
set REPO_URL=https://github.com/%GITHUB_USER%/agencia-uneb-site.git
git remote add origin %REPO_URL% 2>nul || git remote set-url origin %REPO_URL%
echo 🔗 Repositório remoto configurado em: %REPO_URL%

REM Faz o push
git push -u origin main

echo ===========================================
echo ✅ Projeto enviado com sucesso!
echo 🌐 Acesse: https://%GITHUB_USER%.github.io/agencia-uneb-site
echo ===========================================

pause
