import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
	plugins: [sveltekit()],
	define: {
		'import.meta.env.VITE_NODE_VERSION': JSON.stringify(process.version)
	}
  });

// // サーバーサイドにて Node.js のバージョンを表示（クライアントサイドだとエラーが発生）
// console.log("==========================")
// console.log(process.version)
// console.log("==========================")

