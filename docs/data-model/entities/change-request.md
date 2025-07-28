# ID

ENT-2025-008

# エンティティ: ChangeRequest

## 概要

プロジェクトに対する要求変更を管理するための情報を表します。変更のライフサイクル（新規、承認待ち、承認済み、却下、完了など）を追跡します。

### 属性 (カラム)

- `change_request_id`: VARCHAR(255), PK, 変更要求の一意の識別子
- `title`: VARCHAR(255), 変更要求のタイトル
- `description`: TEXT, 変更要求の詳細内容
- `reason`: TEXT, 変更要求の理由
- `proposer_user_id`: VARCHAR(255), FK, 変更要求を提出したユーザーのID
  (users.user_id を参照)
- `urgency`: VARCHAR(50), 緊急度（例: `高`, `中`, `低`）
- `status`: VARCHAR(50), 変更要求のステータス（例: `新規`, `承認待ち`,
  `承認済み`, `却下`, `完了`）
- `approved_by_user_id`: VARCHAR(255), FK, オプション, 承認を行ったユーザーのID
  (users.user_id を参照)
- `approval_comment`: TEXT, オプション, 承認/却下時のコメント
- `created_at`: DATETIME, 変更要求が作成された日時
- `updated_at`: DATETIME, 変更要求が最後に更新された日時

### リレーションシップ

- `USER` (提案者): 多対1, 変更要求は1人のユーザーによって提案される
- `USER` (承認者): 多対1, 変更要求は1人のユーザーによって承認される

### 関連する機能要件

- FR-012 (要求変更管理機能)
- FR-013 (影響範囲分析機能)

### 備考

なし
