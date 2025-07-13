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
