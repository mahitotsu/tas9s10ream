# ID

ENT-2025-011

# エンティティ: TaskDependency

## 概要

タスク間の依存関係を表します。先行タスクと後続タスクの関係、および依存関係のタイプを定義します。

### 属性 (カラム)

- `dependency_id`: VARCHAR(255), PK, 依存関係の一意の識別子
- `predecessor_task_id`: VARCHAR(255), FK, 先行タスクのID (tasks.task_id を参照)
- `successor_task_id`: VARCHAR(255), FK, 後続タスクのID (tasks.task_id を参照)
- `type`: VARCHAR(50), 依存関係のタイプ（例: `FS` (終了-開始), `SS` (開始-開始),
  `FF` (終了-終了), `SF` (開始-終了)）
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `TASK` (先行タスク): 多対1, 依存関係は1つの先行タスクを持つ
- `TASK` (後続タスク): 多対1, 依存関係は1つの後続タスクを持つ

### 関連する機能要件

- [FR-010 (タスク依存関係管理機能)](../../requirements/functional-requirements/fr-010-task-dependency-management-function.md)
- [FR-011 (成果物依存関係可視化機能)](../../requirements/functional-requirements/fr-011-artifact-dependency-visualization-function.md)

### 備考

なし
