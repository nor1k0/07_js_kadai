<html>

<head>
    <meta charset="utf-8">
    <title>営業進捗管理(登録確認)</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
<table>
<div class="excel" >
    <p>Excel風　営業進捗管理(一覧確認)</p>
    <a href="./post.php"><img src="./img/icon_111112_256 2.png" class="icon"></a>
    <a href="./write.php"><img src="./img/icon_159142_256.png" class="icon"></a>
        
<tr class="header">
          <th class="item2">記入日</th>
          <th class="item2">担当者名</th>
          <th class="item2">メールアドレス</th>
          <th class="item2">会社名</th>
          <th class="item2">訪問日</th>
          <th class="item2">商談確度</th>
</tr>

<?php
ini_set('display_errors', 0);

// セキュリティ クロスサイトスクリプティング
function h($str){
    return htmlspecialchars($str , ENT_QUOTES);
 }

//1.  DB接続します
//1.  DB接続します
try {
    //Password:MAMP='root',XAMPP=''
    $pdo = new PDO('mysql:dbname=php_kadai;charset=utf8;host=localhost', 'root', '');
  } catch (PDOException $e) {
    exit('DBConnectError'.$e->getMessage());
  }
  
  //２．データ取得SQL作成
  
  
  // where のなかにselectboxの選択を定義したものを入れ言え
  
  $stmt = $pdo->prepare("SELECT * FROM gs_bm_table WHERE mail LIKE '%@%';");
  $status = $stmt->execute();
  
  
  //３．データ表示
  
  $view="";
  if ($status==false) {
      //execute（SQL実行時にエラーがある場合）
    $error = $stmt->errorInfo();
    exit("ErrorQuery:".$error[2]);
  
  }else{
    // elseの中はSQLが成功した場合
    //Selectデータの数だけ自動でループしてくれる
    //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php


    while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
      $view1 .= "<p>" .h($result["date"]) ."</p>";
      $view2 .= "<p>" .h($result["name"]). "</p>";
      $view3 .= "<p>" .h($result["mail"]). "</p>";
      $view4 .= "<p>" .h($result["company_name"]). "</p>";
      $view5 .= "<p>" .h($result["visit_date"]). "</p>";
      $view6 .= "<p>" .h($result["score"]). "</p>";
    }
}
?>
        <tr> 
        <th class="item1"><?= $view1 ?></th>
         <td class="item2"><?= $view2 ?></td>
         <td class="item2"><?= $view3 ?></td>
         <td class="item2"><?= $view4 ?></td>
         <td class="item2"><?= $view5 ?></td>
         <td class="item2"><?= $view6 ?></td>
</tr>


          <div><?= $view ?></div>

</table>
</body>

</html>



<!--data.txtの際のコード 
            // ファイルを開く
        $openFile = fopen('./data/data.txt', 'r');
        echo "<table border = 1>";
        // ファイル内容を1行ずつ読み込んで出力
        // fgets($openFile)で、1行を読み込み、それを$strに代入
        // 何も読み込むものがなくなると、while文が終了する
        while ($str = fgets($openFile)) {
            $ary = explode(",", $str); //文字列を配列に変換
            echo '<tr>';
            for($i = 0; $i < sizeof($ary); $i++){
                echo "<td> {$ary[$i]} </td>";
            }
            echo '</tr>';


            // nl2br ... textファイルの改行を<br>に変換する関数
            // echo nl2br($str);
            // var_dump($ary);
        };
        fclose($openFile); -->

<!-- // 参考
// https://gray-code.com/php/make-the-board-vol5/

$current_date = null;
$data = null;
$file_handle = null;
$split_data = null;
$message = array();
$message_array = array();

if( $file_handle = fopen( './data/data.txt','r') ) {
    while( $data = fgets($file_handle) ){
        // 参考
        // https://www.vitoshacademy.com/php-reading-from-a-file-into-a-html-table/

        echo "<table border = 1>";
        $counter = 1;
        while(!feof($file_handle))
        {
            $split_data = preg_split( '/,/', $data);

            $message = array(
                'write_date' => $split_data[0],
                'name' => $split_data[1],
                'mail' => $split_data[2],
                'company_name' => $split_data[3],
                'visit_date' => $split_data[4],
                'score' => $split_data[5],
            );
    
            $line = fgets($file_handle);
            echo "<tr><td>$counter</td>";
            echo "<td>$split_data[0]</td>";
            echo "<td>$split_data[1]</td>";
            echo "<td>$split_data[2]</td>";
            echo "<td>$split_data[3]</td>";
            echo "<td>$split_data[4]</td>";
            echo "<td>$split_data[5]</td>";
            $counter++;
        };
            echo "</table>";

        }};

fclose($file_handle); -->