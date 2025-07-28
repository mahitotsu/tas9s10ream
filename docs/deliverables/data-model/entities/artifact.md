# ID

ENT-2025-005

# エンティティ: Artifact

## 概要

タスクやプロジェクトに関連するファイルやドキュメントを表します。

### 属性 (カラム)

- `artifact_id`: VARCHAR(255), PK, 成果物の一意の識別子
- `task_id`: VARCHAR(255), FK, 関連するタスクのID (tasks.task_id を参照)
- `file_name`: VARCHAR(255), ファイル名
- `file_path`: VARCHAR(255), ファイルパス

### リレーションシップ

- `TASK`: 多対1, 成果物は1つのタスクに関連付けられる

### 関連する機能要件

- FR-009 (成果物管理機能)

### 備考

なし
