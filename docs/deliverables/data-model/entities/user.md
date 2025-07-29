# ID: RDD-ENT-2025-001

# エンティティ: ユーザー (User)

## 概要

システムを利用するユーザーを表現するエンティティです。ITプロジェクトメンバーとITプロジェクト管理者の両方を含みます。

## 属性

| 属性名                   | データ型 | 制約           | 説明                                                 |
| ------------------------ | -------- | -------------- | ---------------------------------------------------- |
| `user_id`                | UUID     | 主キー         | ユーザーの一意な識別子                               |
| `email`                  | String   | 必須, ユニーク | ユーザーのメールアドレス（ログインIDとして使用）     |
| `password_hash`          | String   | 必須           | パスワードのハッシュ値                               |
| `full_name`              | String   | 必須           | ユーザーの氏名                                       |
| `role_id`                | UUID     | 外部キー       | ユーザーに割り当てられたロールのID                   |
| `created_at`             | DateTime | 必須           | ユーザーが作成された日時                             |
| `updated_at`             | DateTime | 必須           | ユーザー情報が最後に更新された日時                   |
| `last_login_at`          | DateTime | オプション     | 最終ログイン日時                                     |
| `is_mfa_enabled`         | Boolean  | 必須           | 多要素認証が有効かどうか（デフォルト: false）        |
| `mfa_secret`             | String   | オプション     | 多要素認証のシークレットキー（暗号化して保存）       |
| `mfa_recovery_codes`     | JSON     | オプション     | 多要素認証のリカバリーコード（暗号化して保存）       |
| `accessibility_settings` | JSON     | オプション     | アクセシビリティ設定（文字サイズ、コントラストなど） |

## 関係

- `Role` エンティティと多対1の関係（1つのロールに複数のユーザーが紐づく）
- `Task` エンティティと1対多の関係（タスクの担当者、作成者、更新者）
- `Project` エンティティと1対多の関係（プロジェクトの作成者、更新者）
- `Change Request` エンティティと1対多の関係（変更要求の提案者、承認者）
- `Notification` エンティティと1対多の関係（通知を受け取るユーザー）

## 関連する機能要件

- [FR-025 (ユーザー登録機能)](../../functional-requirements/fr-025-user-registration-function.md)
- [FR-026 (ユーザー情報管理機能)](../../functional-requirements/fr-026-user-information-management-function.md)
- [FR-027 (ロール・権限管理機能)](../../functional-requirements/fr-027-role-permission-management-function.md)
- [FR-034 (パスワードリセット機能)](../../functional-requirements/fr-034-password-reset-function.md)
- [FR-040 (多要素認証管理機能)](../../functional-requirements/fr-040-multi-factor-authentication-management-function.md)
