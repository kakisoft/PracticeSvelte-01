# モックサーバについて
Prism にて、yaml ファイルをモックサーバとして起動できます。  

Prism の詳細については、公式サイトをご参照ください。  
https://stoplight.io/open-source/prism


## Prismインストール
```
npm install -g @stoplight/prism-cli
```

## yaml ファイルからモックサーバを起動
```
prism mock opanapi_app01.yaml -p 4010
```

モックサーバを起動すると、APIをコールしてアクセスできます。  

（使用例）
```
curl -X 'GET' 'http://localhost:4010/api/accesstest' -H 'accept: application/json'
```

（レスポンス例）
```json
[
    {
        "event_code": "IMPACT_L",
        "event_name": "衝撃：大"
    },
    {
        "event_code": "IMPACT_M",
        "event_name": "衝撃：中"
    },
    {
        "event_code": "MANUAL",
        "event_name": "手動"
    }
]
```
