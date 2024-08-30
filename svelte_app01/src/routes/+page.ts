// since there's no dynamic data here, we can prerender
// it so that it gets served as a static asset in production
export const prerender = true;

// export async function load() {
//   let nodeVersion = 'Unknown';

//   // サーバーサイドのみで Node.js のバージョンを取得
//   if (typeof process !== 'undefined' && process.version) {
//     nodeVersion = process.version;
//   }

//   console.log(nodeVersion)

//   return {
//     nodeVersion
//   };
// }
