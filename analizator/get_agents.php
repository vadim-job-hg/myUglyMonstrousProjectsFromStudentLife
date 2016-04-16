<?php
function loadAgents($param)
{
	$params = explode(',', $param);	
	global $SC;	
	$where1 = "";
	$where2 = "";
	$agents = array();
	switch($params[0])
	{
		case "all":
			$where1 = "";
		break;
	}
	switch($params[1])
	{
		case "all":
			$where2 = "";
		break;
	}
	$query = "SELECT * FROM user_agent_list WHERE 1=1 $where1 $where2";
	if($res = mysql_query($query))
	{
		while($row = mysql_fetch_object($res))
		{
			$agents[] = $row->name;
		}
	}
	$SC->load_useragent_list($agents);
}
?>