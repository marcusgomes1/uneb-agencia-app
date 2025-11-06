# Agência de Comunicação UNEB — Site (Público)

Site moderno, hipermídia e interativo da Agência de Comunicação da UNEB.
Este pacote é para publicação pública no GitHub (repositório `agencia-uneb-site`).

## Conteúdo do pacote
- Frontend: React + Vite + Tailwind + Framer Motion (PWA)
- Backend: Express (API mock)
- Hero: vídeo institucional TV UNEB (YouTube ID `8ugr477_Jw0`)
- PWA: manifest + service worker
- Scripts de deploy: `deploy.sh` (Linux/macOS) e `deploy.bat` (Windows)

## Instalação rápida (descompactar e rodar)
```bash
unzip agencia-uneb-site-public.zip
cd agencia-uneb-site
npm install
npm run dev   # front-end
npm run server  # backend mock (porta 4000)
```

Frontend: http://localhost:5173
API mock: http://localhost:4000/api/noticias

## Publicar no GitHub (com script automático)
### Linux / macOS
1. Torne o script executável (apenas na primeira vez):
```bash
chmod +x deploy.sh
```
2. Execute e informe seu usuário GitHub quando solicitado:
```bash
./deploy.sh
```

### Windows (cmd)
1. Execute `deploy.bat` (clique duas vezes ou rode no prompt de comando):
```
deploy.bat
```
2. Informe seu usuário GitHub quando solicitado.

> O script cria/usa a branch `main` e define o remoto `https://github.com/SEU-USUARIO/agencia-uneb-site.git`.
> Como o repositório é público, qualquer pessoa poderá ver o código e acessar o site publicado no GitHub Pages.

## Deploy alternativo (Netlify / Vercel)
- Netlify: build `npm run build`, publish `dist`.
- Vercel: framework Vite, output dir `dist`.

## Licença
MIT — sinta-se à vontade para reutilizar e adaptar com crédito à UNEB.
