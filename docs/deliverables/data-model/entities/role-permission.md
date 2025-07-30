# ID

ENT-2025-023

# エンティティ: RolePermission

## 概要

ロールと権限の多対多の関係を管理するための中間エンティティです。どのロールがどの権限を持つかを定義します。

### 属性 (カラム)

- `role_id`: CHAR(36), PK, FK, ロールID (roles.role_id を参照)
- `permission_id`: CHAR(36), PK, FK, 権限ID (permissions.permission_id を参照)
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `ROLE`: 多対1, 複数の `ROLE_PERMISSION` が1つのロールに紐付けられる
- `PERMISSION`: 多対1, 複数の `ROLE_PERMISSION` が1つの権限に紐付けられる

### 関連する機能要件

- FR-027 (ロール・権限管理機能)

### 備考

複合主キー (`role_id`, `permission_id`) を持ちます。
