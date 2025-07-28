# ID: RDD-SCR-2025-023

# 画面: 多要素認証設定画面

## 概要

ユーザーが多要素認証（MFA）を有効化・無効化し、認証デバイスの登録、およびリカバリーコードの管理を行える画面です。

## 画面要素

- MFA有効/無効スイッチ
- (MFA有効化時)
  - QRコード表示エリア
  - シークレットキー表示エリア
  - 認証アプリ入力フィールド
  - 「リカバリーコード生成」ボタン
  - リカバリーコード表示エリア
- (MFA無効化時)
  - パスワード入力フィールド
  - MFAコード入力フィールド
- 「保存」ボタン
- 戻るボタン

## 画面遷移

- 「保存」ボタン: 本画面に更新内容を反映
- 戻るボタン: [SCR-006 (設定画面)](../screens/scr-006-settings-screen.md)へ戻る

## 関連する機能要件

- [FR-040 (多要素認証管理機能)](../functional-requirements/fr-040-multi-factor-authentication-management-function.md)

## 関連する非機能要件

- [NFR-002 (セキュリティ)](../non-functional-requirements/nfr-002-security.md): 認証情報の安全な取り扱い。
- [NFR-008 (ユーザビリティ)](../non-functional-requirements/nfr-008-usability.md):
  MFA設定が容易であること。
