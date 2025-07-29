# ID: RDD-SCR-2025-022

# 画面: システム運用管理画面

## 概要

システムの稼働状況、アラート、主要なログ、バックアップ状況などを一元的に表示し、運用管理者がシステムの状態を把握・操作できるダッシュボード画面です。

## 画面要素

- システム稼働状況サマリー（CPU使用率、メモリ使用量、ディスク使用量、ネットワークトラフィックなど）
- アクティブなアラートリスト（FR-038と連携）
- 最新のシステムログ表示（FR-039と連携）
- バックアップ状況サマリー（最終バックアップ日時、ステータスなど）
- 「ログ詳細」ボタン（[SCR-030 (監査ログ管理画面)](../screens/scr-030-audit-log-management-screen.md)へ遷移）
- 「バックアップ管理」ボタン（[SCR-024 (バックアップ・リストア管理画面)](../screens/scr-024-backup-restore-management-screen.md)へ遷移）
- 「リソース最適化設定」ボタン（[SCR-025 (リソース最適化管理画面)](../screens/scr-025-resource-optimization-management-screen.md)へ遷移）
- 「コスト異常アラート設定」ボタン（[SCR-026 (コスト異常検知・アラート設定画面)](../screens/scr-026-cost-anomaly-detection-alert-settings-screen.md)へ遷移）
- 「ドキュメント管理」ボタン（[SCR-027 (ドキュメント管理画面)](../screens/scr-027-document-management-screen.md)へ遷移）
- ナビゲーションメニュー

## 画面遷移

- 「ログ詳細」ボタン: SCR-XXX (システムログ管理画面) ※新規作成を想定
- 「バックアップ管理」ボタン: SCR-XXX (バックアップ・リストア管理画面)
  ※新規作成を想定
- 「リソース最適化設定」ボタン: SCR-XXX (リソース最適化管理画面) ※新規作成を想定
- 「コスト異常アラート設定」ボタン: SCR-XXX (コスト異常検知・アラート設定画面)
  ※新規作成を想定
- ナビゲーションメニュー: 各対応画面へ遷移

## 関連する機能要件

- [FR-038 (システム稼働状況監視・アラート機能)](../functional-requirements/fr-038-system-monitoring-alert-function.md)
- [FR-039 (システムログ管理機能)](../functional-requirements/fr-039-system-log-management-function.md)

## 関連する非機能要件

- [NFR-001 (運用性)](../non-functional-requirements/nfr-001-operability.md): システムの稼働状況を24時間365日監視可能であること。
- [NFR-008 (ユーザビリティ)](../non-functional-requirements/nfr-008-usability.md): 運用管理者がシステムの状態を直感的に把握できること。
- [NFR-004 (パフォーマンス)](../non-functional-requirements/nfr-004-performance.md): リアルタイムでの情報表示と高速な画面遷移。
