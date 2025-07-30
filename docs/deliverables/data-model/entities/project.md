# ID

ENT-2025-004

# エンティティ: Project

## 概要

関連するタスクの集合を表します。ユーザーによって管理されます。

### 属性 (カラム)

- `project_id`: CHAR(36), PK, プロジェクトの一意の識別子
- `project_name`: VARCHAR(255), プロジェクト名
- `description`: TEXT, プロジェクトの説明
- `start_date`: DATE, プロジェクト開始日
- `end_date`: DATE, プロジェクト終了日
- `manager_user_id`: CHAR(36), FK, プロジェクト責任者ユーザーID
  (users.user_id を参照)
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時
- `is_deleted`: BOOLEAN, 論理削除フラグ (デフォルト: false)

### リレーションシップ

- `USER`: 多対1, プロジェクトは1人のユーザーによって管理される
- `TASK`: 1対多, プロジェクトは複数のタスクを含むことができる

### 関連する機能要件

- FR-006 (プロジェクト管理機能)

### 備考

なし
