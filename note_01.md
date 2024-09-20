## エンドポイントごとのアクセス
```
curl -I -H "Accept: text/html" 127.0.0.1:3001
curl -I 127.0.0.1:3001


mysite/page01
mysite/api/page01


同一エンドポイントでも、「どこからのアクセスか（正確にはヘッダ）」によって、挙動が異なる
mysite/page01 -> APIコール
                ブラウザからのアクセス


+page.svelte  /mysite/
+server.ts    /mysite/
```