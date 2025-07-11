# Project-Specific Instructions for Gemini CLI

<!-- Add any project-specific instructions or context here. -->

## Git コミットメッセージの規約

このプロジェクトでは、[Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)
の仕様に準拠したセマンティックコミットメッセージを義務付けています。

**主要なルール:**

- **フォーマット**: `<type>[optional scope]: <description>`
- **`<type>`**: `feat`, `fix`, `docs`, `style`, `refactor`, `perf`, `test`,
  `chore`, `build`, `ci`, `revert` のいずれか。
- **`<description>`**: 変更の簡潔な説明。命令形、最初の文字を大文字、末尾にピリオドなし、**50文字以内**。
- **複数行メッセージ**: 1行空けてから `[optional body]`
  を記述。各行は72文字で折り返し推奨。変更の「理由」と「方法」を説明。

詳細なルールについては、[Git 操作ルール (ベストプラクティス)](./docs/rules/GIT_RULES.md)
を参照してください。
