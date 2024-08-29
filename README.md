# PracticeSvelte-01
PracticeSvelte-01

## _
```
docker-compose down --rmi all
docker-compose down --rmi all --volumes
```

## __
https://github.com/geoffrich/http-203-svelte/blob/main/README.md
```
# create a new project in the current directory
npm create svelte@latest

# create a new project in my-app
npm create svelte@latest my-app

npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open


npm run dev:development -- --host --port 5173
```


## Build / start
```
# svelte_app01\package.json

## build
vite dev --mode development
vite dev --mode production
vite build --mode development
vite build --mode production

## start
node build


## svelte_app01\svelte.config.js
import adapter from '@sveltejs/adapter-node';
```

