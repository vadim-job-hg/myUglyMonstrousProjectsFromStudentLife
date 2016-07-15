<?php
function loadPagesFotos($param)
{
	global $SC;
	global $failed;
	global $urls;
	$params = explode(',', $param);
	$SC = new SuperCurl("analizPagesFotos");
	$SC->__set('window_size', 200);
	$SC->init_console(true);
	$SC->__set("use_useragent_list", true);	
	call_user_func($params[2], $params[3].",".$params[4]);
	$SC->__set("use_proxy_list", true); 
	call_user_func($params[5], $params[6].",".$params[7].",".$params[8]);
	$SC->request("http://".$params[0], "POST", null, null, null, $params[1]);
	$SC->execute(200);
	/*0 level*/
	$try = 0;
	while(count($failed)>0&&$try<100)
	{
		$SC->clear_the_parse_list();
		$try++;
		foreach($failed as $fail)
		{
			$SC->request($fail['url'], "POST", null, null, null, $fail['param']);
		}
		$failed = array();
		$SC->execute(200);
	}
	/*1 level*/
	
	$SC->__set("callback", "analizPagesFotos1");
	$SC->clear_the_parse_list();
	foreach($urls as $key=>$url)
	{		
		$SC->request($url['url'], "POST", null, null, null, $params[1].",".$key);
	}
	$SC->execute(200);
	$try = 0;
	while(count($failed)>0&&$try<100)
	{
		$SC->clear_the_parse_list();
		$try++;
		foreach($failed as $fail)
		{
			$SC->request($fail['url'], "POST", null, null, null, $fail['param']);
		}
		$failed = array();
		$SC->execute(200);
	}
	/*2 level*/	
	$SC->__set("callback", "analizPagesFotos2");
	$SC->clear_the_parse_list();
	foreach($urls as $key1=>$url)
	{
		foreach($url['url1'] as $key2=>$rl)
		{
			$SC->request($rl['url'], "POST", null, null, null, $params[1].",".$key1.",".$key2);
		}
	}
	$SC->execute(200);
	$try = 0;
	while(count($failed)>0&&$try<1)
	{
		$SC->clear_the_parse_list();
		$try++;
		foreach($failed as $fail)
		{
			$SC->request($fail['url'], "POST", null, null, null, $fail['param']);
		}
		$failed = array();
		$SC->execute(200);
	}
	/*Pagination*/	
	$SC->__set("callback", "analizPagesPagination");
	$SC->clear_the_parse_list();
	foreach($urls as $key1=>$url)
	{
		foreach($url['url1'] as $key2=>$rl)
		{
			foreach($rl['url2'] as $key3=>$l)
			{
				$SC->request($l['url'], "POST", null, null, null, $params[1].",".$key1.",".$key2.",".$l['name']);
			}
		}
	}
	$SC->execute(200);
	$try = 0;
	while(count($failed)>0&&$try<1)
	{
		$SC->clear_the_parse_list();
		$try++;
		foreach($failed as $fail)
		{
			$SC->request($fail['url'], "POST", null, null, null, $fail['param']);
		}
		$failed = array();
		$SC->execute(200);
	}
	/*3 level*/
/*	$SC->__set("callback", "analizPagesFotos3");
	$SC->clear_the_parse_list();
	foreach($urls as $key1=>$url)
	{
		foreach($url['url1'] as $key2=>$rl)
		{
			foreach($url['url2'] as $key3=>$l)
			{
				SuperCurl::add_debug_msg("# we will get the pages for ".$params[0]." from ".$url['name']." from ".$rl['name']." from ".$l['name']);
				$SC->request($rl['url'], "POST", null, null, null, $params[1].",".$key1.",".$key2.",".$key3);
			}
		}
	}
	$SC->execute(200);
	$try = 0;
	while(count($failed)>0&&$try<1)
	{
		$SC->clear_the_parse_list();
		$try++;
		foreach($failed as $fail)
		{
			$SC->request($fail['url'], "POST", null, null, null, $fail['param']);
		}
		$failed = array();
		$SC->execute(200);
	}
*/
	/*end*/	
	unset($SC);
	print_r($urls);
}
function analizPagesFotos($response, $info, $request)
{
	global $failed;
	global $urls;
	SuperCurl::add_debug_msg("# LEVEL 0:We will get the pages for ".$request->url);
	$params = explode(',', $request->id);
	if($info['http_code']==200)
	{
		$t = strpos($response, $params[0]);
		if($t!=false)
		{
			SuperCurl::add_debug_msg("# page has been loaded");			
		}
		else
		{
			SuperCurl::add_debug_msg("# page WRONG DATA has been loaded");
			$it = array();
			$it['url'] = $request->url;
			$it['param'] = $request->id;
			$failed[] = $it;
			return 0;
		}
	}
	else
	{
		SuperCurl::add_debug_msg("# ERROR loading page");
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[] = $it;
		return 0;
	}
	$t = strpos($response, "item_container");
	if($t==false)
	{
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[] = $it;
		return 0;
	}
	while($t!=false)
	{	
		$t = strpos($response, 'href="', $t+1);	
		if($t!=false)
		{
			$t+=6;
			$v = strpos($response, '"', $t);
			if($v!=false)
			{
				$l = $v - $t;
				$it = array();
				$it['url'] = substr($response, $t, $l);
				$t = strpos($response, '">', $v);	
				if($t!=false)
				{
					$t+=2;
					$v = strpos($response, '<span', $t);
					if($v!=false)
					{	
						$l = $v - $t;
						$it['name'] = substr($response, $t, $l);
						$urls[] = $it;
						$t = strpos($response, "item_container", $t+1);
					}
				}						
			}
		}
	}
}
function analizPagesFotos1($response, $info, $request)
{
	global $failed;
	global $urls;
	SuperCurl::add_debug_msg("# LEVEL 1:we will get the pages for ".$request->url);
	$params = explode(',', $request->id);
	if($info['http_code']==200)
	{
		$t = strpos($response, $params[0]);
		if($t!=false)
		{
			SuperCurl::add_debug_msg("# page has been loaded");			
		}
		else
		{
			SuperCurl::add_debug_msg("# page WRONG DATA has been loaded");
			$it = array();
			$it['url'] = $request->url;
			$it['param'] = $request->id;
			$failed[$params[1]] = $it;
			return 0;
		}
	}
	else
	{
		SuperCurl::add_debug_msg("# ERROR loading page");
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[$params[1]] = $it;
		return 0;
	}
	$t = strpos($response, 'id="subcategory');
	if($t==false)
	{
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[$params[1]] = $it;
		return 0;
	}	
	while($t!=false)
	{
		if($t!=false)
		{	
			$t = strpos($response, 'href="', $t+1);	
			if($t!=false)
			{
				$t+=6;
				$v = strpos($response, '"', $t);
				if($v!=false)
				{
					$l = $v - $t;
					$it = array();
					$it['url'] = substr($response, $t, $l);
					$t = strpos($response, '<td>', $v);	
					if($t!=false)
					{
						$t+=4;
						$v = strpos($response, '</td>', $t);
						if($v!=false)
						{	
							$l = $v - $t;
							$it['name'] = substr($response, $t, $l);
							$urls[$params[1]]['url1'][] = $it;
							$t = strpos($response, 'id="subcategory', $t+1);	
						}
					}						
				}
			}
		}		
	}
}
function analizPagesFotos2($response, $info, $request)
{
	global $failed;
	global $urls;
	SuperCurl::add_debug_msg("# LEVEL 2:we will get the pages for ".$request->url);
	$params = explode(',', $request->id);
	if($info['http_code']==200)
	{
		$t = strpos($response, $params[0]);
		if($t!=false)
		{
			SuperCurl::add_debug_msg("# page has been loaded");			
		}
		else
		{
			SuperCurl::add_debug_msg("# page WRONG DATA has been loaded");
			$it = array();
			$it['url'] = $request->url;
			$it['param'] = $request->id;
			$failed[] = $it;
			return 0;
		}
	}
	else
	{
		SuperCurl::add_debug_msg("# ERROR loading page");
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[] = $it;
		return 0;
	}
	$t = strpos($response, 'id="show_subcategory');
	if($t==false)
	{
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[$params[1]] = $it;
		return 0;
	}
	while($t!=false)
	{
		if($t!=false)
		{	
			$t = strpos($response, 'href="', $t+1);	
			if($t!=false)
			{
				$t+=6;
				$v = strpos($response, '"', $t);
				if($v!=false)
				{
					$l = $v - $t;
					$it = array();
					$it['url'] = substr($response, $t, $l);
					$t = strpos($response, '">', $v);	
					if($t!=false)
					{
						$t+=2;
						$v = strpos($response, '</a>', $t);
						if($v!=false)
						{	
							$l = $v - $t;
							$it['name'] = substr($response, $t, $l);
							$urls[$params[1]]['url1'][$params[2]]['url2'][] = $it;
							$t = strpos($response, 'id="show_subcategory', $t+1);	
						}
					}						
				}
			}
		}		
	}
}
function analizPagesPagination($response, $info, $request)
{
	global $failed;
	global $urls;
	SuperCurl::add_debug_msg("# LEVEL 2:we will get the pages for ".$request->url);
	$page = 0;
	$params = explode(',', $request->id);
	if($info['http_code']==200)
	{
		$t = strpos($response, $params[0]);
		if($t!=false)
		{
			SuperCurl::add_debug_msg("# page has been loaded");			
		}
		else
		{
			SuperCurl::add_debug_msg("# page WRONG DATA has been loaded");
			$it = array();
			$it['url'] = $request->url;
			$it['param'] = $request->id;
			$failed[] = $it;
			return 0;
		}
	}
	else
	{
		SuperCurl::add_debug_msg("# ERROR loading page");
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[] = $it;
		return 0;
	}
	$t = strpos($response, 'btn-small');
	if($t==false)
	{
		/*$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[$params[1]] = $it;*/
		return 0;
	}
	while($t!=false)
	{
		if($t!=false)
		{
			$v = strpos($response, '</a>', $t);
			if($v!=false)
			{
				$l = $v - $t;
				$page = substr($response, $t, $l);
				$page = preg_replace('/[^0-9]/', '', $page);
			}			
			$t = strpos($response, 'btn-small">', $t+1);
		}
	}
	//print_r($params);
	for($i=2;$i<=$page;$i++)
	{
		$it = array();
		$it['url'] = $request->url."$i/";
		if(isset($params[3])) $it['name'] = $params[3];
		$urls[$params[1]]['url1'][$params[2]]['url2'][] = $it;
	}
	//<a href="http://fotos.ua/shop/pylesosy/25/" class="btn btn-gray btn-small">25</a>
}
function analizPagesFotos3($response, $info, $request)
{
	global $failed;
	global $urls;
	$params = explode(',', $request->id);
	if($info['http_code']==200)
	{
		$t = strpos($response, $params[0]);
		if($t!=false)
		{
			SuperCurl::add_debug_msg($request->url);
			SuperCurl::add_debug_msg("# page has been loaded");			
		}
		else
		{
			SuperCurl::add_debug_msg($request->url);
			SuperCurl::add_debug_msg("# page WRONG DATA has been loaded");
			$it = array();
			$it['url'] = $request->url;
			$it['param'] = $request->id;
			$failed[] = $it;
			return 0;
		}
	}
	else
	{
		SuperCurl::add_debug_msg($request->url);
		SuperCurl::add_debug_msg("# ERROR loading page");
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[] = $it;
		return 0;
	}
	$t = strpos($response, 'id="item_');
	if($t==false)
	{
		$it = array();
		$it['url'] = $request->url;
		$it['param'] = $request->id;
		$failed[$params[1]] = $it;
		return 0;
	}
	while($t!=false)
	{
		if($t!=false)
		{	
			$t = strpos($response, 'href="', $t+1);	
			if($t!=false)
			{
				$t+=6;
				$v = strpos($response, '"', $t);
				if($v!=false)
				{
					$l = $v - $t;
					$it = array();
					$it['url'] = substr($response, $t, $l);
					$t = strpos($response, '">', $v);	
					if($t!=false)
					{
						$t+=2;
						$v = strpos($response, '</a>', $t);
						if($v!=false)
						{	
							$l = $v - $t;
							$it['name'] = substr($response, $t, $l);
							$urls[$params[1]][$params[2]][$params[3]]['url2'][] = $it;
							$t = strpos($response, 'id="item_', $t+1);	
						}
					}						
				}
			}
		}		
	}
}