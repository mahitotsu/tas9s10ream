# ID: RDD-SCR-2025-026

# 画面: コスト異常検知・アラート設定画面

## 概要

クラウド利用費の異常を検知し、アラートを通知するためのルールを設定できる画面です。

## 画面要素

- コスト異常検知ルールリスト
  - 各ルールの名称
  - 検知タイプ
  - 閾値
  - 通知先
  - 各ルールの「編集」ボタン
  - 各ルールの「削除」ボタン
- 「新規ルール作成」ボタン
- 戻るボタン

## 画面遷移

- 「新規ルール作成」ボタン: 本画面で新規ルール作成フォームを表示
- 各ルールの「編集」ボタン: 本画面で編集フォームを表示
- 戻るボタン:
  [SCR-022 (システム運用管理画面)](../screens/scr-022-system-management-screen.md)へ戻る

## 関連する機能要件

- [FR-043 (コスト異常検知・アラート機能)](../functional-requirements/fr-043-cost-anomaly-detection-alert-function.md)

## 関連する非機能要件

- [NFR-006 (コスト効率)](../non-functional-requirements/nfr-006-cost-efficiency.md): コスト監視ツールを導入し、異常なコスト発生を検知できること。
- [NFR-008 (ユーザビリティ)](../non-functional-requirements/nfr-008-usability.md): コスト異常検知ルールの設定・管理が容易であること。
