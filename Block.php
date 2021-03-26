$ip=$_SERVER['REMOTE_ADDR'];

if(!preg_match("/^61.255.206/",$ip)) exit; // 67.123.37  대역만 허용
