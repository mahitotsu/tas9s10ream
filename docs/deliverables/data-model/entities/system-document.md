# ID: RDD-ENT-2025-019

# エンティティ: システムドキュメント (SystemDocument)

## 概要

システムの設計書、仕様書、運用手順書などのドキュメントに関するメタデータを表現するエンティティです。

## 属性

| 属性名         | データ型 | 制約     | 説明                                                                    |
| -------------- | -------- | -------- | ----------------------------------------------------------------------- |
| `document_id`  | UUID     | 主キー   | ドキュメントの一意な識別子                                              |
| `title`        | String   | 必須     | ドキュメントのタイトル                                                  |
| `version`      | String   | 必須     | ドキュメントのバージョン                                                |
| `content_path` | String   | 必須     | ドキュメントの内容が保存されているパス                                  |
| `type`         | String   | 必須     | ドキュメントの種類（例: 'Specification', 'Design', 'Operation Manual'） |
| `status`       | String   | 必須     | ドキュメントのステータス（例: 'Draft', 'Published', 'Archived'）        |
| `created_at`   | DateTime | 必須     | ドキュメントが作成された日時                                            |
| `updated_at`   | DateTime | 必須     | ドキュメントが最後に更新された日時                                      |
| `created_by`   | UUID     | 外部キー | ドキュメントを作成したユーザーのID                                      |
| `updated_by`   | UUID     | 外部キー | ドキュメントを最後に更新したユーザーのID                                |

## 関係

- `User` エンティティと多対1の関係（ドキュメントを作成・更新したユーザー）

## 関連する機能要件

- [FR-044 (ドキュメント管理機能)](../../functional-requirements/fr-044-document-management-function.md)
