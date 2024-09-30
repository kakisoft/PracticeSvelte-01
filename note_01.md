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


## 配信方式・バッファによるエラー
app02 にて、エラーが発生する
（Svelte が提供している遅延ローディング機能を使うとエラーが発生する。）

＜解決方法＞
１．nginx にて、buffer を OFF にする -> 無し
２．配信方式を変える　（欠点：中規模の実装修正が入る。特に API取得絡み）
３．Svelte が提供している遅延ローディングを使わず、自前で実装する。（小規模の実装修正が発生）


https://kit.svelte.jp/docs/load#streaming-with-promises

> AWS Lambda や Firebase のような ストリーミングをサポートしないプラットフォームでは、レスポンスはバッファされます。
> つまり、すべての promise が解決してからでないとページがレンダリングされないということです。
> もしプロキシ (例えば NGINX) を使用している場合は、プロキシされたサーバーからのレスポンスをバッファしないようにしてください。

