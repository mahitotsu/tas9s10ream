# ID

ENT-2025-008

# エンティティ: ChangeRequest

## 概要

プロジェクトに対する要求変更を管理するための情報を表します。変更のライフサイクル（新規、承認待ち、承認済み、却下、完了など）を追跡します。

### 属性 (カラム)

- `change_request_id`: VARCHAR(255), PK, 変更要求の一意の識別子
- `title`: VARCHAR(255), 変更要求のタイトル
- `description`: TEXT, 変更要求の詳細
- `reason`: TEXT, 変更要求の理由
- `proposer_user_id`: CHAR(36), FK, 提案者ユーザーID (users.user_id を参照)
- `urgency`: VARCHAR(50), 緊急度 (例: '低', '中', '高')
- `status`: VARCHAR(50), 変更要求のステータス (例: '提案中', '承認済み', '却下')
- `approver_user_id`: CHAR(36), FK, 承認者ユーザーID (users.user_id を参照)
- `approval_comment`: TEXT, 承認コメント
- `created_at`: DATETIME, 作成日時
- `updated_at`: DATETIME, 更新日時

### リレーションシップ

- `USER` (提案者): 多対1, 変更要求は1人のユーザーによって提案される
- `USER` (承認者): 多対1, 変更要求は1人のユーザーによって承認される

### 関連する機能要件

- [FR-012 (要求変更管理機能)](../../requirements/functional-requirements/fr-012-change-request-management-function.md)
- [FR-013 (影響範囲分析機能)](../../requirements/functional-requirements/fr-013-impact-analysis-function.md)

### 備考

なし
