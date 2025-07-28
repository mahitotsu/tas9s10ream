# ID: RDD-SCR-2025-029

# 画面: アクセシビリティ設定画面

## 概要

ユーザーがシステムの表示に関するアクセシビリティオプション（例: 文字サイズ、コントラストモード、色覚サポートテーマ）を調整できる画面です。

## 画面要素

- 文字サイズ選択（ラジオボタン、ドロップダウンなど）
- コントラストモード選択（トグルスイッチ、ラジオボタンなど）
- 色覚サポートテーマ選択（ラジオボタン、ドロップダウンなど）
- 「保存」ボタン
- 戻るボタン

## 画面遷移

- 「保存」ボタン: 本画面に更新内容を反映
- 戻るボタン: [SCR-006 (設定画面)](../screens/scr-006-settings-screen.md)へ戻る

## 関連する機能要件

- [FR-046 (アクセシビリティ設定機能)](../functional-requirements/fr-046-accessibility-settings-function.md)

## 関連する非機能要件

- [NFR-009 (アクセシビリティ)](../non-functional-requirements/nfr-009-accessibility.md):
  WCAG 2.1 AAレベルに準拠すること。
- [NFR-008 (ユーザビリティ)](../non-functional-requirements/nfr-008-usability.md): アクセシビリティ設定が容易であること。
