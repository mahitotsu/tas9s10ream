# ID: RDD-NFR-2025-002

# 非機能要件: セキュリティ

## カテゴリ

セキュリティ

### 概要

システムおよびデータの機密性、完全性、可用性を確保し、不正アクセス、情報漏洩、データ改ざん、およびその他の脅威から保護するための要件を定義します。これは、組織の資産とユーザーの信頼を守るために最も重要です。

### 詳細

- ユーザー認証は多要素認証に対応すること。
- データは通信時および保存時に暗号化されること。
- 不正アクセス、情報漏洩、データ改ざんからシステムを保護すること。
- セキュリティパッチは定期的に適用されること。
- 脆弱性診断を定期的に実施すること。

### 測定方法

- 認証方式の強度
- 暗号化プロトコルの適用状況
- 脆弱性診断の結果
- セキュリティインシデントの発生件数

### 関連する機能要件

- [FR-025 (ユーザー登録機能)](../functional-requirements/fr-025-user-registration-function.md)
- [FR-026 (ユーザー情報管理機能)](../functional-requirements/fr-026-user-information-management-function.md)
- [FR-027 (ロール・権限管理機能)](../functional-requirements/fr-027-role-permission-management-function.md)
- [FR-034 (パスワードリセット機能)](../functional-requirements/fr-034-password-reset-function.md)

### 関連する業務フロー

- [BF-007 (パスワードリセットフロー)](../business-flows/bf-007-password-reset-flow.md)

### 関連するユースケース

- [UC-013 (ユーザーを管理する)](../use-cases/uc-013-manage-users.md)
- [UC-017 (パスワードをリセットする)](../use-cases/uc-017-reset-password.md)

### 関連する画面

- [SCR-001 (ログイン画面)](../screens/scr-001-login-screen.md)
- [SCR-017 (ユーザー管理画面)](../screens/scr-017-user-management-screen.md)
- [SCR-019 (パスワードリセット画面)](../screens/scr-019-password-reset-screen.md)
