# Dockerfileスタイルガイド

このドキュメントは、このプロジェクトにおけるDockerfileのコーディング基準を概説します。これらのガイドラインに従うことで、最適化され、安全で、保守可能なコンテナイメージを作成できます。

## 1. 一般原則

- **レイヤーの最小化**:
  Dockerfileの各命令は新しいイメージレイヤーを作成します。関連するコマンドを
  `&&` を使って結合し、レイヤー数を削減してください。
- **.dockerignore**: ビルドコンテキストから不要なファイルやディレクトリ（例:
  `.git`、`node_modules`、ドキュメント）を除外するために `.dockerignore`
  ファイルを使用してください。これにより、ビルド速度が向上し、イメージサイズが削減されます。
- **マルチステージビルド**: ビルド時の依存関係を最終的なランタイムイメージから分離するために、マルチステージビルドを使用してください。これにより、よりスリムで安全な本番イメージになります。
- **エフェメラル（一時的）であること**: コンテナはエフェメラルであるべきです。つまり、停止・破棄された後、最小限のセットアップで新しいものに再構築・置換できるべきです。

## 2. 命令のベストプラクティス

- **命令の大文字化**: 読みやすさのため、Dockerfileの命令（例: `FROM`, `RUN`,
  `COPY`）はすべて大文字にしてください。

- **FROM**: ビルドの再現性を確保するため、ベースイメージには `latest`
  ではなく、特定のバージョンタグ（例: `node:18-alpine`）を使用してください。

- **RUN**:
  - 複数行にわたる引数（例: パッケージをインストールする場合）は、読みやすく、重複を避けるためにアルファベット順にソートしてください。
  - `apt-get update` と `apt-get install` は同じ `RUN`
    ステートメントで結合してください。これにより、パッケージリストが古いというキャッシュの問題を防ぎます。
  - レイヤーサイズを削減するため、一時ファイル（例:
    `/var/lib/apt/lists/*`）は同じ `RUN`
    コマンド内でクリーンアップしてください。

  ```dockerfile
  RUN apt-get update && apt-get install -y \
      package-one \
      package-two \
   && rm -rf /var/lib/apt/lists/*
  ```

- **COPY vs. ADD**: `ADD` よりも `COPY` を優先してください。`COPY`
  はより透過的で、ローカルファイルのみをコピーします。`ADD`
  には、tarの自動展開やリモートURLのサポートなど、明示的でなく、潜在的にリスクのある追加機能があります。

- **WORKDIR**: 明確さと一貫性のため、`WORKDIR`
  には絶対パスを使用してください。ディレクトリが存在しない場合、`WORKDIR`
  はそれを作成します。

- **CMD vs. ENTRYPOINT**:
  - コンテナの主となる実行可能ファイルを定義するには `ENTRYPOINT`
    を使用してください。
  - `ENTRYPOINT` にデフォルトの引数を提供するには `CMD`
    を使用してください。これにより、コンテナを異なる引数で簡単に実行できます。
  - シェル形式（`CMD executable param1`）よりもexec形式（例:
    `CMD ["executable", "param1"]`）を優先してください。exec形式はコンテナをDockerデーモンの直接の子プロセスにし、シグナルを適切に受信できるようにします。

- **USER**: セキュリティのため、`USER`
  命令を使用して非ルートユーザーを作成し、切り替えてください。コンテナを非ルートユーザーとして実行することは、重要なセキュリティのベストプラクティスです。

## 3. Dockerfile構造の例（マルチステージ）

```dockerfile
# ---- ビルドステージ ----
FROM node:18-alpine AS builder

WORKDIR /app

# 依存関係のインストールに必要なファイルのみをコピー
COPY package*.json ./

# 依存関係のインストール
RUN npm ci

# ソースコードの残りをコピー
COPY . .

# アプリケーションのビルド
RUN npm run build

# ---- 本番ステージ ----
FROM node:18-alpine

# 非ルートユーザーの作成
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

WORKDIR /home/appuser/app

# ビルダーステージからビルド済み資材をコピー
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json .

# アプリケーションポートの公開
EXPOSE 3000

# アプリケーションの起動
CMD [ "node", "dist/index.js" ]
```
