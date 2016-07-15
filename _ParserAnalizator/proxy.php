<?php
function proxyAnalizator($response, $info, $request){
	global $founded;
	global $parse_url;
	if($info['http_code']!==200)
    {
        SuperCurl::add_debug_msg(
            "->\t" .
            $request->options[CURLOPT_PROXY] .
            "\tFAILED\t" .
            $info['http_code'] .
            "\t" .
            $info['total_time'] .
            "\t" .
            $info['url']
        );
    }else
    {
        SuperCurl::add_debug_msg(
            "->\t" .
            $request->options[CURLOPT_PROXY] .
            "\tOK\t" .
            $info['http_code'] .
            "\t" .
            $info['total_time'] .
            "\t" .
            $info['url']
        );

    }
	$regexpipport="/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\:\d{1,5}/";		
	switch($parse_url[$request->id]['site_id'])
	{
		case "1"://spys.ru(front)
		case "9"://http://xseo.in/
		case "10"://http://www.cool-tests.com/
		case "11"://http://proxylist.h12.ru/
		case "18"://www.prime-speed.ru
		case "21"://http://socks.biz.ua/
		case "27"://http://www.proxybox.ru/proxy_list.htm
		case "33"://http://www.samair.ru
		case "35"://http://sergeykovalets.com/
		case "37"://http://www.ip-adress.com/proxy_list/
		case "42"://http://pass.efmsoft.com/prxlist_ru.php
		case "49"://http://google-proxies.blogspot.com/2013/09/24-09-13-google-proxies_6033.html
		case "54"://http://www.prime-ip.com/
		case "58"://http://proxy-share.com/?currentPage=1
		case "60"://http://tehnofil.ru/proxy.html
		case "61"://http://proxylife.org/proxy/http
		case "62"://http://www.aliveproxy.com/ru-proxy-list/
		case "81"://http://www.mrhinkydink.com/proxies2.htm
		case "109"://http://proxyheaven.blogspot.com/
		case "111"://http://www.therealist.ru/proksi/spisok-vsex-rabochix-proksi
		case "112"://http://white55.narod.ru/proxylist.html
		case "113"://http://sanek-t.narod.ru/proxy.html
		case "115"://http://fineproxy.org/
		case "118"://http://www.zahodi-ka.ru/wm/proxy-checker/list.shtml
		case "119"://http://notan.h1.ru/hack/xwww/proxy11.html
		case "120"://http://www.proxybox.ru/socks_list.htm
		case "121"://http://2freeproxy.com/
			preg_match_all($regexpipport, $response, $proxys);
		break;
		
	//	echo htmlspecialchars($response);

	}
	$founded[] = $proxys;
}
function loadAllPages($id = 0){
	global $site_list;
	$url = array();	
	switch($id)
	{	
		case 1:
		case 8:
		case 9:
		case 10:
		case 11:
		case 18:
		case 21:
		case 27:
		case 35:
		case 37:
		case 42:
		case 49:
		case 54:
		case 60:
		case 61:
		case 62:
		case 109:
		case 111:
		case 112:
		case 113:
		case 115:
		case 118:
		case 120:
		case 121:
			$query = "SELECT * FROM proxy_url_list WHERE site_id='".$id."'";
			if($res = mysql_query($query))
			{
				while($row=mysql_fetch_object($res))
				{
					$it  = array();
					$it['site_id'] =  $id;
					$it['url'] =  $row->url;
					$url[] = $it;
				}
			}
		break;
		case 33:
			for($i=1;$i<=9; $i++)
			{
				$it  = array();
				$it['site_id'] =  $id;
				$it['url'] =  "http://www.samair.ru/proxy/proxy-0".$i.".htm";
				$url[] = $it;
			}
			for($i=10;$i<=50; $i++)
			{
				$it  = array();
				$it['site_id'] =  $id;
				$it['url'] =  "http://www.samair.ru/proxy/proxy-".$i.".htm";
				$url[] = $it;
			}
		break;
		case 58:
			for($i=1;$i<=50; $i++)
			{
				$it  = array();
				$it['site_id'] =  $id;
				$it['url'] =  "http://proxy-share.com/?currentPage=".$i.".htm";
				$url[] = $it;
			}
		break;
		case 81:
			$it  = array();
			$it['site_id'] =  $id;
			$it['url'] =  "http://www.mrhinkydink.com/proxies.htm";
			$url[] = $it;
			for($i=2;$i<=19; $i++)
			{
				$it  = array();
				$it['site_id'] =  $id;
				$it['url'] =  "http://www.mrhinkydink.com/proxies".$i.".htm";
				$url[] = $it;
			}
		break;
		case 119:
			for($i=1;$i<=19; $i++)
			{
				$it  = array();
				$it['site_id'] =  $id;
				$it['url'] =  "http://notan.h1.ru/hack/xwww/proxy".$i.".html";
				$url[] = $it;
			}
		break;
	}
	return $url;
}
function getfromarray($it)
{	
	$return = array();	
	if(is_array($it))
	{
		foreach($it as $i)
		{
			$return = array_merge(getfromarray($i), $return);
		}
	}
	else
	{
		$return [] = $it;
	}
	return $return;
}
//Статистика прокси
function loadProxy($ip)
{
	$ip = array_unique($ip);
	$count = 0;
	echo "Найдено ".count($ip)."\n";
	foreach($ip as $proxy)
	{
		$proxy = preg_replace("/[^0-9.:]/","",$proxy);
		$temp = explode(":", $proxy);
		print_r($temp);
		echo "\n";
		$query = "SELECT * FROM ip_list_dead WHERE ip='".$temp[0]."' and port = '".$temp[1]."' LIMIT 1";
		$ok = 1;
		if($res=mysql_query($query))
		{
			if($row=mysql_fetch_object($res))
			{
				$ok = 0;
			}
		}
		echo mysql_error();
		$query = "SELECT * FROM ip_list_test WHERE ip='".$temp[0]."' and port = '".$temp[1]."' LIMIT 1";
		if($res=mysql_query($query))
		{	
			if($row=mysql_fetch_object($res))
			{
				$ok = 0;
			}
		}
		echo mysql_error();
		$query = "SELECT * FROM ip_list_work WHERE ip='".$temp[0]."' and port = '".$temp[1]."' LIMIT 1";
		if($res=mysql_query($query))
		{
			if($row=mysql_fetch_object($res))
			{
				$ok = 0;
			}
		}
		echo mysql_error();
		if($ok == 1)
		{
			//mysql_query("INSERT INTO ip_list_test (`ip`, `port`) values ('".$temp[0]."', '".$temp[1]."')");
			echo "INSERT INTO ip_list_test (`ip`, `port`) values ('".$temp[0]."', '".$temp[1]."')<br>";
			echo mysql_error();
			$count++;
		}
		
	}
	echo "Добавленно $count\n";	
}

function proxySucess($ip)
{

}
function proxyFail($ip)
{

}
