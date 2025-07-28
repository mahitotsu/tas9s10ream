# Project-Specific Instructions for Gemini CLI

<!-- Add any project-specific instructions or context here. -->

**Gemini CLI運用ガイドライン:**
このプロジェクトでファイルを生成または修正する際は、`GEMINI.md`およびそれに記載されているすべてのプロジェクト標準、ガイドライン、スタイルガイドを常に能動的に参照し、厳密に遵守すること。

## Git コミットメッセージの規約

このプロジェクトでは、[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
の仕様に準拠したセマンティックコミットメッセージを義務付けています。

**主要なルール:**

- **フォーマット**: `<type>[optional scope]: <description>`
- **`<type>`**: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`,
  `chore`, `build`, `ci`, `revert` のいずれか。
- **`<description>`**: 変更の簡潔な説明。命令形、最初の文字を大文字、末尾にピリオドなし、**50文字以内**。
- **コミットメッセージは英語のみとします。**
- **複数行メッセージ**: 1行空けてから `[optional body]`
  を記述。各行は72文字で折り返し推奨。変更の「理由」と「方法」を説明。
- **コミットの実行**: ユーザーからの指示があるまで、コミットは行いません。

詳細なルールについては、[Git 操作ルール (ベストプラクティス)](./docs/standards-and-templates/rules/git-rules.md)
を参照してください。

## プロジェクト標準とガイドライン

このプロジェクトでは、ドキュメントだけでなく、様々な側面において標準とガイドラインを定めています。

### ドキュメント標準と作成ガイドライン

ドキュメントの整合性と品質を確保するため、`docs/standards-and-templates/rules/documentation-rules.md`
にて以下の標準とガイドラインを定めています。

- **ドキュメントの種類と目的**: 各開発フェーズで作成すべきドキュメント（要件定義書、設計書、テスト仕様書など）とその役割。
- **内容と記述の要点**: 各ドキュメントに含めるべき具体的な項目、記述の粒度、および曖昧さを避けるためのガイドライン。
- **ドキュメント間の依存関係**: ドキュメントがどのように相互に関連し、前のフェーズのドキュメントが次のフェーズの基礎となるか。
- **ドキュメント作成フロー**: 開発ライフサイクルにおけるドキュメント作成のタイミング、レビュー、更新プロセス。

ドキュメントの作成や修正を行う際は、これらの標準とガイドラインを厳守し、プロジェクト全体のドキュメント体系に沿った形で作業を進めてください。

また、プロジェクト内で使用される専門用語や略語については、`docs/standards-and-templates/glossary.md`
を参照し、その意味を正しく理解するよう努めてください。

ドキュメント内のダイアグラムは、Mermaid記法を使用してください。

### スタイルガイド

プロジェクトのコード品質と一貫性を保つため、以下のスタイルガイドを定めています。

- [Dockerfile スタイルガイド](./docs/standards-and-templates/rules/dockerfile-style-guide.md)
- [Markdown スタイルガイド](./docs/standards-and-templates/rules/markdown-style-guide.md)
- [シェルスクリプト コーディングスタイル](./docs/standards-and-templates/rules/shell-script-coding-style.md)

## 命名規約

このプロジェクトでは、ファイル名やディレクトリ名には**ケバブケース (kebab-case)**
を使用することを推奨します。命名規約の詳細については、`docs/standards-and-templates/rules/naming-conventions.md`を参照してください。この規約は、プロジェクト全体に適用されます。

例:

- `my-document-file.md`
- `my-directory-name/`

## 会話言語の規約

このプロジェクトにおける私との会話は、**日本語のみ**で行うものとします。

### Markdownファイルのリンティングについて

Markdownファイルのリンティングルールについては、`docs/standards-and-templates/rules/markdown-style-guide.md`を参照してください。

これらのルールに従うことで、ドキュメントの品質と一貫性が保たれ、スムーズなコミットが可能になります。
