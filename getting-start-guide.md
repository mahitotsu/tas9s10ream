# 開発環境セットアップガイド

このガイドでは、`tas9s10ream`
プロジェクトをローカル環境にセットアップし、開発を開始するまでの手順を説明します。

## 1. Gitリポジリのクローン

まず、プロジェクトのGitリポジトリをローカルにクローンします。

```bash
git clone https://github.com/mahitotsu/tas9s10ream.git
cd tas9s10ream
```

## 2. 依存関係のインストール

プロジェクトの依存関係をインストールします。このプロジェクトではnpmを使用しています。

```bash
npm install
```

これにより、`package.json`
に定義されているすべての依存関係（開発依存関係を含む）がインストールされます。

## 3. Gitフックの有効化

このプロジェクトでは、コミットメッセージの規約遵守やコードの品質維持のためにGitフック（Husky）を使用しています。`npm install`
コマンドの実行時に自動的にGitフックが有効になりますが、もし何らかの理由で有効になっていない場合は、以下のコマンドを手動で実行してください。

```bash
npm run prepare
```

このコマンドは、`.husky` ディレクトリ内のフックを有効にします。

## 4. コミットメッセージの規約

このプロジェクトでは、[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
の仕様に準拠したセマンティックコミットメッセージを義務付けています。詳細については、`docs/rules/git-rules.md`
を参照してください。

## 5. ドキュメントの規約

このプロジェクトでは、Markdownファイルのリンティングに `remark`
を使用しています。ドキュメント作成や修正を行う際は、`docs/rules/documentation-rules.md`
および `docs/rules/markdown-style-guide.md`
を参照し、プロジェクトの標準とガイドラインを遵守してください。

## 6. 開発開始

上記のセットアップが完了したら、開発を開始できます。

## 7. 環境変数の設定

プロジェクトのルートディレクトリに `.env`
ファイルを作成し、以下の環境変数を設定してください。これらの変数はアプリケーションの動作に必要です。

| 環境変数名                    | 説明                           | サンプル値                                    |
| :---------------------------- | :----------------------------- | :-------------------------------------------- |
| `GOOGLE_CLOUD_PROJECT`        | Google Cloud プロジェクトID    | `your-gcp-project-id`                         |
| `GOOGLE_CLOUD_LOCATION`       | Google Cloud ロケーション      | `asia-northeast1`                             |
| `GEMINI_MODEL`                | Gemini モデル名                | `gemini-2.5-flash`                            |
| `AWS_DOCUMENTATION_PARTITION` | AWS ドキュメントパーティション | `aws`                                         |
| `AWS_REGION`                  | AWS リージョン                 | `ap-northeast-1`                              |
| `AWS_PROFILE`                 | AWS プロファイル名             | `default`                                     |
| `FASTMCP_LOG_LEVEL`           | FastMCP ログレベル             | `ERROR`                                       |
| `PERPLEXITY_MODEL`            | Perplexity AI モデル名         | `sonar`                                       |
| `PERPLEXITY_API_KEY`          | Perplexity AI APIキー          | `pplx-your-api-key`                           |
| `AWS_PROFILE_NAME`            | AWS SSO プロファイル名         | `default`                                     |
| `AWS_SSO_START_URL`           | AWS SSO 開始URL                | `"https://your-sso-portal.awsapps.com/start"` |
| `AWS_SSO_REGION`              | AWS SSO リージョン             | `us-east-1`                                   |
| `AWS_SSO_ACCOUNT_ID`          | AWS SSO アカウントID           | `"123456789012"`                              |
| `AWS_SSO_ROLE_NAME`           | AWS SSO ロール名               | `"AdministratorAccess"`                       |
| `AWS_DEFAULT_REGION`          | AWS デフォルトリージョン       | `ap-northeast-1`                              |

これらの値はサンプルです。実際の開発環境に合わせて適切な値を設定してください。
