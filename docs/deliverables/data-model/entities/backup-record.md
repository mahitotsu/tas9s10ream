# ID: RDD-ENT-2025-017

# エンティティ: バックアップレコード (BackupRecord)

## 概要

システムデータのバックアップに関するメタデータを表現するエンティティです。

## 属性

| 属性名          | データ型 | 制約       | 説明                                                               |
| --------------- | -------- | ---------- | ------------------------------------------------------------------ |
| `backup_id`     | UUID     | 主キー     | バックアップレコードの一意な識別子                                 |
| `backup_time`   | DateTime | 必須       | バックアップが実行された日時                                       |
| `status`        | String   | 必須       | バックアップのステータス（例: 'SUCCESS', 'FAILED', 'IN_PROGRESS'） |
| `type`          | String   | 必須       | バックアップの種類（例: 'FULL', 'INCREMENTAL'）                    |
| `location`      | String   | 必須       | バックアップデータの保存場所（パス、URLなど）                      |
| `size_bytes`    | Long     | オプション | バックアップデータのサイズ（バイト単位）                           |
| `created_by`    | UUID     | 外部キー   | バックアップを実行したユーザーのID（手動バックアップの場合）       |
| `error_message` | Text     | オプション | エラーが発生した場合のエラーメッセージ                             |

## 関係

- `User` エンティティと多対1の関係（バックアップを実行したユーザー）

## 関連する機能要件

- [FR-041 (バックアップ・リストア管理機能)](../../functional-requirements/fr-041-backup-restore-management-function.md)
