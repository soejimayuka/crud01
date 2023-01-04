<?php

  // セッションの開始
  session_start();

  // ログインチェック
  if ( !isset($_SESSION['name']) || empty($_SESSION['name']) ) {
    // ログインしていない

    // ログインフォームへリダイレクト
    header('Location: ./');
    exit();
  }


  // ファイルの読み込み
  require_once('../inc/config.php'); //設定ファイル
  require_once('../inc/functions.php'); //独自関数ファイル

  try {
    // データベースへ接続
    $dbh = new PDO(DSN, DB_USER, DB_PASSWORD);

    // エラー発生時に「PDOException」という例外を投げる設定に変更
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // SQL文の作成
    $sql = 'SELECT * FROM posts ORDER BY created DESC';

    // SQLを実行
    $stmt = $dbh->query($sql);

    // 実行結果を連想配列として取得
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // データベースとの接続を終了
    $dbh = null;

  } catch (PDOException $e) {
    //　例外発生時の処理
    echo 'エラー' . h($e->getMessage());
    exit();
  }
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>PT:マイページ</title>
  <link rel="stylesheet" href="../css/common.css" />
</head>
<body>
  <section class="l-section">
  <h1 class="c-heading">マイページ</h1>
    <p class="l-btn_secondary">
      <a href="post.php" class="c-button_secondary -btn_secondary">今日の体調を入力する</a>
    </p>
    <p class="l-btn_secondary">
      <a href="detail.php" class="c-button_secondary -btn_secondary">入力した体調をみる</a>
    </p>

    <p class="l-btn_secondary"><a href="logout.php" class="c-button_secondary -btn_secondary">ログアウト</a></p>
  </section>
</body>
</html>
