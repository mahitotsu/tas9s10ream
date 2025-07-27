# 要件定義書テンプレート

## ID

RDD-2025-001

## 1. はじめに (Introduction)

### 対象読者 (Intended Audience)

本ドキュメントは、Tas9s10reamの開発チーム、プロジェクトマネージャー、品質保証担当者、および関連するステークホルダーを対象としています。

### ドキュメントの構成 (Document Conventions)

本ドキュメントは、標準的な要件定義書の構成に従い、システムの概要から詳細な機能・非機能要件までを記述します。

### 参照ドキュメント (References)

- コンセプト定義書 (CDD-2025-001)

### スケジュール・予算情報 (Schedule and Budget Information)

本ドキュメントでは、スケジュールおよび予算に関する具体的な情報は含みません。

### 目的 (Purpose)

本ドキュメントは、ITプロジェクトにおける「頻繁な要求変更」と「予測不可能な外部要因」によりプロジェクトの進捗、成果、スケジュールが不安定になるという課題を解決し、チーム全体の生産性向上とストレス軽減を実現するWebアプリケーション「Tas9s10ream」の要件を定義することを目的とします。Getting
Things Done
(GTD) のコンセプトを具現化し、ユーザーがGTDに関する事前知識がなくても、製品の相互作用に素直に従うことで自然にその実践を強力に支援するシステムとして、必要な機能、性能、およびその他の制約を明確にします。

## 2. 概要 (Overall Description)

- 製品の展望 (Product Perspective)
  Tas9s10reamは、ITプロジェクトに特化したGTD実践支援Webアプリケーションです。個人のタスク管理からチームコラボレーションまでをサポートし、不確実性の高い環境下でのプロジェクト遂行を支援します。既存のプロジェクト管理ツールとの連携も視野に入れています。

### 製品の機能 (Product Functions)

GTDの主要な5つのワークフロー（収集、処理、整理、省察、実行）をWeb上でシームレスに実現し、ユーザーが意識することなくGTDの恩恵を受けられる機能を提供します。さらに、アイゼンハワーマトリクスに基づいたインテリジェントな優先順位付け（AIによるタスク分析とレコメンデーションを含む）、ネットワーク型成果物管理（WBS概念の取り込みと依存関係の可視化）、動的変更管理機能、およびリアルタイム進捗ダッシュボード機能を提供し、プロジェクトの安定的な運営と効率的なタスク完遂を支援します。

### 利用者特性 (User Characteristics)

- [ACT-001 (ITプロジェクトメンバー)](./actors/act-001-it-project-member.md)
- [ACT-002 (ITプロジェクト管理者)](./actors/act-002-it-project-manager.md)

### 業務フロー (Business Flow)

- [BF-001 (タスク収集フロー)](./business-flows/bf-001-task-collection-flow.md)
- [BF-002 (タスク処理フロー)](./business-flows/bf-002-task-processing-flow.md)
- [BF-003 (タスク整理フロー)](./business-flows/bf-003-task-organization-flow.md)
- [BF-004 (週次レビューフロー)](./business-flows/bf-004-weekly-review-flow.md)
- [BF-005 (タスク実行フロー)](./business-flows/bf-005-task-execution-flow.md)
- [BF-006 (既存ツール連携フロー)](./business-flows/bf-006-existing-tool-integration-flow.md)
- [BF-007 (パスワードリセットフロー)](./business-flows/bf-007-password-reset-flow.md)

### 一般的な制約 (General Constraints)

Webアプリケーションとして提供されること。

- GTDの原則に準拠していること。日本語での利用を前提とすること。

### 前提と依存関係 (Assumptions and Dependencies)

既存のプロジェクト管理ツールとの連携は、各ツールのAPI仕様に依存すること。

## 3. ユースケース (Use Cases)

- [UC-001 (タスクをインボックスに記録する)](./use-cases/uc-001-record-task-to-inbox.md)
- [UC-002 (インボックスのタスクを処理する)](./use-cases/uc-002-process-inbox-task.md)
- [UC-003 (タスクをプロジェクトに紐付ける)](./use-cases/uc-003-link-task-to-project.md)
- [UC-004 (週次レビューを実施する)](./use-cases/uc-004-perform-weekly-review.md)
- [UC-005 (次の行動リストからタスクを実行する)](./use-cases/uc-005-execute-next-action-task.md)
- [UC-006 (既存ツールからタスクをインポートする)](./use-cases/uc-006-import-tasks-from-existing-tool.md)
- [UC-007 (タスクの進捗を更新する)](./use-cases/uc-007-update-task-progress.md)
- [UC-008 (プロジェクトの状況を確認する)](./use-cases/uc-008-check-project-status.md)
- [UC-009 (タスクの優先順位をAIのレコメンデーションに基づいて決定する)](./use-cases/uc-009-ai-task-prioritization.md)
- [UC-010 (成果物とタスクの依存関係を可視化する)](./use-cases/uc-010-visualize-artifact-task-dependencies.md)
- [UC-011 (要求変更を管理し、影響範囲を確認する)](./use-cases/uc-011-manage-change-requests.md)
- [UC-012 (リアルタイム進捗ダッシュボードでプロジェクト状況を把握する)](./use-cases/uc-012-realtime-progress-dashboard.md)
- [UC-013 (ユーザーを管理する)](./use-cases/uc-013-manage-users.md)
- [UC-014 (システム通知を設定する)](./use-cases/uc-014-configure-notifications.md)
- [UC-015 (タスクを検索・フィルタリングする)](./use-cases/uc-015-search-filter-tasks.md)
- [UC-016 (レポートを生成・閲覧する)](./use-cases/uc-016-generate-view-reports.md)
- [UC-017 (パスワードをリセットする)](./use-cases/uc-017-reset-password.md)
- [UC-018 (タスク詳細を編集する)](./use-cases/uc-018-edit-task-details.md)

## 4. 機能要件 (Functional Requirements)

- FR-001 (タスク収集機能)
- FR-002 (タスク処理機能)
- FR-003 (タスク整理機能)
- FR-004 (タスク実行機能)
- FR-005 (週次レビュー機能)
- FR-006 (プロジェクト管理機能)
- FR-007 (コンテキスト管理機能)
- FR-008 (AIによるタスク優先順位付け機能)
- FR-009 (成果物管理機能)
- FR-010 (タスク依存関係管理機能)
- FR-011 (成果物依存関係可視化機能)
- FR-012 (要求変更管理機能)
- FR-013 (影響範囲分析機能)
- FR-014 (リアルタイム進捗データ収集機能)
- FR-015 (リアルタイム進捗データ分析機能)
- FR-016 (進捗ダッシュボード表示機能)
- FR-017 (ボトルネック・遅延リスク特定機能)
- FR-018 (リソース配分表示機能)
- FR-019 (予算消費表示機能)
- FR-020 (計画乖離自動検出機能)
- FR-021 (ボトルネック・遅延リスクハイライト機能)
- FR-022 (既存ツール連携設定機能)
- FR-023 (タスクインポート機能)
- FR-024 (タスクエクスポート機能)
- FR-025 (ユーザー登録機能)
- FR-026 (ユーザー情報管理機能)
- FR-027 (ロール・権限管理機能)
- FR-028 (システム通知機能)
- FR-029 (通知設定機能)
- FR-030 (タスク検索機能)
- FR-031 (タスクフィルタリング機能)
- FR-032 (進捗レポート出力機能)
- FR-033 (タスク履歴レポート出力機能)

### 4.1. インターフェース要件 (Interface Requirements)

#### ユーザーインターフェース (User Interfaces)

システム全体の画面遷移については、以下のドキュメントを参照してください。

- [全画面遷移図](./screens/all-screen-transitions.md)

個別の画面定義は以下の通りです。

- [SCR-001 (ログイン画面)](./screens/scr-001-login-screen.md)
- [SCR-002 (インボックス画面)](./screens/scr-002-inbox-screen.md)
- [SCR-003 (プロジェクト一覧画面)](./screens/scr-003-project-list-screen.md)
- [SCR-004 (次の行動リスト画面)](./screens/scr-004-next-action-list-screen.md)
- [SCR-005 (週次レビュー画面)](./screens/scr-005-weekly-review-screen.md)
- [SCR-006 (設定画面)](./screens/scr-006-settings-screen.md)
- [SCR-007 (タスク詳細画面)](./screens/scr-007-task-detail-screen.md)
- [SCR-008 (検索画面)](./screens/scr-008-search-screen.md)
- [SCR-009 (プロジェクト詳細画面)](./screens/scr-009-project-detail-screen.md)
- [SCR-010 (通知設定画面)](./screens/scr-010-notification-settings-screen.md)
- [SCR-011 (レポート画面)](./screens/scr-011-report-screen.md)
- [SCR-012 (成果物管理画面)](./screens/scr-012-artifact-management-screen.md)
- [SCR-013 (変更要求管理画面)](./screens/scr-013-change-request-management-screen.md)
- [SCR-014 (影響範囲分析結果画面)](./screens/scr-014-impact-analysis-result-screen.md)
- [SCR-015 (リアルタイム進捗ダッシュボード画面)](./screens/scr-015-realtime-progress-dashboard-screen.md)
- [SCR-016 (既存ツール連携詳細設定画面)](./screens/scr-016-external-tool-integration-settings-screen.md)
- [SCR-017 (ユーザー管理画面)](./screens/scr-017-user-management-screen.md)
- [SCR-018 (新規プロジェクト作成画面)](./screens/scr-018-new-project-creation-screen.md)
- [SCR-001 (ログイン画面)](./screens/scr-001-login-screen.md)
- [SCR-002 (インボックス画面)](./screens/scr-002-inbox-screen.md)
- [SCR-003 (プロジェクト一覧画面)](./screens/scr-003-project-list-screen.md)
- [SCR-004 (次の行動リスト画面)](./screens/scr-004-next-action-list-screen.md)
- [SCR-005 (週次レビュー画面)](./screens/scr-005-weekly-review-screen.md)
- [SCR-006 (設定画面)](./screens/scr-006-settings-screen.md)
- [SCR-007 (タスク詳細画面)](./screens/scr-007-task-detail-screen.md)
- [SCR-008 (検索画面)](./screens/scr-008-search-screen.md)
- [SCR-009 (プロジェクト詳細画面)](./screens/scr-009-project-detail-screen.md)
- [SCR-010 (通知設定画面)](./screens/scr-010-notification-settings-screen.md)
- [SCR-011 (レポート画面)](./screens/scr-011-report-screen.md)
- [SCR-012 (成果物管理画面)](./screens/scr-012-artifact-management-screen.md)
- [SCR-013 (変更要求管理画面)](./screens/scr-013-change-request-management-screen.md)
- [SCR-014 (影響範囲分析結果画面)](./screens/scr-014-impact-analysis-result-screen.md)
- [SCR-015 (リアルタイム進捗ダッシュボード画面)](./screens/scr-015-realtime-progress-dashboard-screen.md)
- [SCR-016 (既存ツール連携詳細設定画面)](./screens/scr-016-external-tool-integration-settings-screen.md)
- [SCR-017 (ユーザー管理画面)](./screens/scr-017-user-management-screen.md)
- [SCR-018 (新規プロジェクト作成画面)](./screens/scr-018-new-project-creation-screen.md)
- [SCR-019 (パスワードリセット画面)](./screens/scr-019-password-reset-screen.md)
- [SCR-020 (成果物詳細画面)](./screens/scr-020-artifact-detail-screen.md)
- [SCR-021 (変更要求詳細画面)](./screens/scr-021-change-request-detail-screen.md)

#### ソフトウェアインターフェース (Software Interfaces)

- 既存プロジェクト管理ツールとのAPI連携インターフェース

#### ハードウェアインターフェース (Hardware Interfaces)

#### 通信インターフェース (Communications Interfaces)

- HTTPSプロトコルによるセキュアな通信
- RESTful APIによるデータ連携

### 4.2. データ要件 (Data Requirements)

#### データモデル (Data Model)

- ENT-001 (タスク)
- ENT-002 (プロジェクト)
- ENT-003 (コンテキスト)
- ENT-004 (ユーザー)
- ENT-005 (週次レビュー履歴)
- ENT-006 (連携設定)
- ENT-007 (成果物)
- ENT-008 (変更要求)
- ENT-009 (通知)
- ENT-010 (レポート)
- ENT-011 (ロール/権限)
- ENT-012 (AIレコメンデーション履歴)
- ENT-013 (WBS要素)

#### データ辞書 (Data Dictionary)

## 5. 非機能要件 (Non-Functional Requirements)

- NFR-001 (運用性)
- NFR-002 (セキュリティ)
- NFR-003 (信頼性)
- NFR-004 (パフォーマンス)
- NFR-005 (スケーラビリティ)
- NFR-006 (コスト効率)
- NFR-007 (持続可能性)
- NFR-008 (ユーザビリティ)
- NFR-009 (アクセシビリティ)
- NFR-010 (監査性)
- NFR-011 (保守性)
- NFR-012 (移植性)
