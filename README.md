# mobile

U22 mobile flutter project

## Windows上での環境構築

### 各種ツールのインストールと設定
```powershell
# Firebase CLIのインストール
winget install Google.FirebaseCLI
# Firebaseにログイン
firebase login
＃ FlutterFire CLIのインストール
dart pub global activate flutterfire_cli
```

### 環境変数の設定
```
C:\Users\%USERPROFILE%\AppData\Local\Pub\Cache\bin
```
をユーザー環境変数のPathに追加する。

## コード生成

### GRPCのコード生成

Windowsの場合、Powershell Scriptを実行する。

```powershell
./tools/grpc-gen.ps1
```