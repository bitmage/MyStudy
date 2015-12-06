<?php
system('env | grep LANG');

exit;
$cmd = 'java -jar sign-maker.jar mike messi';
exec($cmd, $ret, $out);
var_dump($ret);
$cmd = 'java -jar sign-maker.jar 麦克 梅西';
exec($cmd, $ret, $out);
var_dump($ret);
