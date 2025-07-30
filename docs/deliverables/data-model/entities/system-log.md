# ID

ENT-2025-014

# エンティティ: SystemLog

## 概要

システム内で発生するログイベントを記録するエンティティです。システムの状態監視、問題の診断、監査証跡などに利用されます。

### 属性 (カラム)

- `log_id`: VARCHAR(255), PK, ログの一意の識別子
- `timestamp`: DATETIME, ログが記録された日時
- `level`: VARCHAR(50), ログレベル（例: `INFO`, `WARN`, `ERROR`, `DEBUG`）
- `source`: VARCHAR(100), ログの発生源（例: `UserService`, `TaskService`,
  `AuthModule`）
- `message`: TEXT, ログメッセージの内容
- `user_id`: VARCHAR(255), FK, オプション, 操作を行ったユーザーのID
  (users.user_id を参照)
- `request_id`: VARCHAR(255), オプション, 関連するリクエストID
- `ip_address`: VARCHAR(50), オプション, 操作元のIPアドレス
- `details`: TEXT, オプション, ログの詳細情報（JSON形式など）
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `USER`: 多対1, オプション, ログがユーザー操作に関連する場合
- `SYSTEM_ALERT`: 1対多, ログがシステムアラートのトリガーとなる場合

### 関連する機能要件

- FR-039 (システムログ管理機能)

### 備考

なし
