<?php
require_once("./functions/index_function.php");

// 関数から画面表示に使用する固定値の呼び出し
$const = load_page_source();

$header = "tpl/header/adminHeader.php";
$main = "tpl/main/sample.php";
$footer = "tpl/footer/sample.php";

// 画面呼び出し
require_once($header);
require_once($main);
require_once($footer);