# ID

ENT-2025-010

# エンティティ: Permission

## 概要

システム内の特定の機能やデータに対するアクセス権限を表します。ロールに紐付けられ、ユーザーが実行できる操作を定義します。

### 属性 (カラム)

- `permission_id`: VARCHAR(255), PK, 権限の一意の識別子
- `permission_name`: VARCHAR(100), 権限の名称（例: `task_create`,
  `project_edit`, `user_manage`）
- `description`: TEXT, オプション, 権限の説明

### リレーションシップ

- `ROLE`: 多対1, 権限は1つのロールに紐付けられる

### 関連する機能要件

- FR-027 (ロール・権限管理機能)

### 備考

なし
