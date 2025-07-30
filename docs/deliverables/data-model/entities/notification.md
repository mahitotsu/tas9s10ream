# ID

ENT-2025-007

# エンティティ: Notification

## 概要

システム内で発生する重要なイベント（タスクの期日、タスクの割り当てなど）をユーザーに通知するための情報を表します。通知履歴の保持や、ユーザーごとの通知設定を管理するために使用されます。

### 属性 (カラム)

- `notification_id`: VARCHAR(255), PK, 通知の一意の識別子
- `user_id`: VARCHAR(255), FK, 通知対象ユーザーのID (users.user_id を参照)
- `type`: VARCHAR(50), 通知の種類（例: `task_due`, `task_assigned`,
  `project_update`）
- `message`: TEXT, 通知メッセージの内容
- `status`: VARCHAR(50), 通知のステータス（例: `sent`, `read`, `failed`）
- `created_at`: DATETIME, 通知が作成された日時
- `read_at`: DATETIME, オプション, 通知が読まれた日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `USER`: 多対1, 通知は1人のユーザーに送信される

### 関連する機能要件

- [FR-028 (システム通知機能)](../../requirements/functional-requirements/fr-028-system-notification-function.md)
- [FR-029 (通知設定機能)](../../requirements/functional-requirements/fr-029-notification-settings-function.md)

### 備考

なし
