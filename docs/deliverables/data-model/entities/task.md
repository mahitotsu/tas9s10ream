# ID

ENT-2025-002

# エンティティ: Task

## 概要

ユーザーが実行すべき作業単位を表します。プロジェクトに紐付けられ、サブタスクや成果物と関連付けられます。

### 属性 (カラム)

- `task_id`: CHAR(36), PK, タスクの一意の識別子
- `user_id`: CHAR(36), FK, ユーザーID (users.user_id を参照)
- `project_id`: CHAR(36), FK, プロジェクトID (projects.project_id を参照)
- `title`: VARCHAR(255), タスクのタイトル
- `description`: TEXT, タスクの内容
- `due_date`: DATE, 期限日
- `status`: VARCHAR(50), タスクのステータス (例: '未着手', '進行中', '完了')
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時
- `is_deleted`: BOOLEAN, 論理削除フラグ (デフォルト: false)

### リレーションシップ

- `USER`: 多対1, タスクは1人のユーザーに投稿される
- `SUBTASK`: 1対多, タスクは複数のサブタスクを含むことができる
- `PROJECT`: 多対1, タスクは1つのプロジェクトに属する
- `ARTIFACT`: 1対多, タスクは複数の成果物に関連付けることができる

### 関連する機能要件

- FR-001 (タスク収集機能)
- FR-002 (タスク処理機能)
- FR-003 (タスク整理機能)
- FR-004 (タスク実行機能)

### 備考

なし
