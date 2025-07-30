# ID

ENT-2025-009

# エンティティ: Role

## 概要

システム内のユーザーに割り当てられる役割を表します。各ロールは特定の権限セットを持ち、ユーザーのアクセス制御に使用されます。

### 属性 (カラム)

- `role_id`: VARCHAR(255), PK, ロールの一意の識別子
- `role_name`: VARCHAR(100), ロールの名称（例: `ITプロジェクトメンバー`,
  `ITプロジェクト管理者`）
- `description`: TEXT, オプション, ロールの説明
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `USER`: 1対多, ロールは複数のユーザーに割り当てられる
- `PERMISSION`: 多対多, ロールは複数の権限を持つ (中間テーブル `ROLE_PERMISSION`
  を介する)

### 関連する機能要件

- [FR-027 (ロール・権限管理機能)](../../requirements/functional-requirements/fr-027-role-permission-management-function.md)

### 備考

なし
