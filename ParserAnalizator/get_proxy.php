<?php
function loadProxy($param)
{
	$params = explode(',', $param);	
	global $SC;	
	switch($params[0])
	{
		case "check":
		$ip = array();
		$query = "SELECT * FROM ip_list_work LIMIT 100";
		if($res = mysql_query($query))
		{
			while($row = mysql_fetch_object($res))
			{
				$ip[] = $row->ip.":".$row->port;
			}
		}
		$SC->load_proxy_list(
			$ip,
			200,
			'http',
			'http://'.$params[1],
			$params[2]			
			);
		break;
	}	
}
?>