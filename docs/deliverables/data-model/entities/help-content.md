# ID: RDD-ENT-2025-020

# エンティティ: ヘルプコンテンツ (HelpContent)

## 概要

システムの各機能や画面に関するヘルプ記事を表現するエンティティです。

## 属性

| 属性名              | データ型 | 制約       | 説明                                                                                   |
| ------------------- | -------- | ---------- | -------------------------------------------------------------------------------------- |
| `help_id`           | UUID     | 主キー     | ヘルプコンテンツの一意な識別子                                                         |
| `title`             | String   | 必須       | ヘルプ記事のタイトル                                                                   |
| `content`           | Text     | 必須       | ヘルプ記事の内容（Markdown形式など）                                                   |
| `category`          | String   | オプション | ヘルプ記事のカテゴリ（例: 'Getting Started', 'Task Management', 'Project Management'） |
| `related_screen_id` | String   | オプション | 関連する画面のID                                                                       |
| `keywords`          | String   | オプション | 検索キーワード（カンマ区切りなど）                                                     |
| `created_at`        | DateTime | 必須       | ヘルプ記事が作成された日時                                                             |
| `updated_at`        | DateTime | 必須       | ヘルプ記事が最後に更新された日時                                                       |

## 関係

- なし（独立したコンテンツエンティティ）

## 関連する機能要件

- [FR-045 (ヘルプ・チュートリアル機能)](../../functional-requirements/fr-045-help-tutorial-function.md)
