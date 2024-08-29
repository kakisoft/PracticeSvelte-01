# PracticeSvelte-01
PracticeSvelte-01

## _
```
docker-compose down --rmi all
docker-compose down --rmi all --volumes
```

## setup
```
npm create svelte@latest .
npm install
npm run dev
```


## build / start : execute from host (not container)
```
make run/prod

make build/prod
make node/build
```

## make build environment

### 1. package.json を編集
```js
	"scripts": {
		"dev": "vite dev",
		"dev:development": "vite dev --mode development",
		"dev:production": "vite dev --mode production",
		"build": "vite build",
		"build:development": "vite build --mode development",
		"build:production": "vite build --mode production",
		"preview": "vite preview",
		"check": "svelte-kit sync && svelte-check --tsconfig ./tsconfig.json",
		"check:watch": "svelte-kit sync && svelte-check --tsconfig ./tsconfig.json --watch",
		"start": "node build"
	},
```

### 2. Node.js 環境向けにビルド
```
npm install @sveltejs/adapter-node

## svelte_app01\svelte.config.js
以下のように編集

import adapter from '@sveltejs/adapter-auto';
    ↓
import adapter from '@sveltejs/adapter-node';
```


## build / start
```
# svelte_app01\package.json

※コンテナの中から実行する場合
## build
vite dev --mode development
vite dev --mode production
vite build --mode development
vite build --mode production

## start
node build
```


__________________________________________________________________________
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
