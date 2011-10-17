<?php
define('KC_INDEX',True);

require_once 'global.php';
function king_def(){
    global $king;
    //create xml root
    $dom=new DOMDocument('1.0','utf-8');
    $path="sitemap.xml";
    $rootE=$dom->createElement('urlset');
    //add root xmlns attribute
    $rootE->setAttribute('xmlns','http://www.sitemaps.org/schemas/sitemap/0.9');
    $dom->appendChild($rootE);
    $maxurl=50000; //siteurl limit
    //search list table read brand path
    $brands=$king->db->getRows('select klistpath,nupdatelist from %s_list');
    foreach($brands as $b){
	//处理连接类型
	if(strpos($b['klistpath'],':')>0){
	    $brandurl=$b['klistpath'];
	    $ld=time(); //如果模型是连接用当前时间戳
	}else{
	    $brandurl=real_url($b['klistpath']);
	    $ld=$b['nupdatelist'];
	};
	$rootE->appendChild(create_url_node($dom,$brandurl,$ld));
	$maxurl--;
    }
    //search article table
    $articles=$king->db->getRows('select kpath,nlastdate from %s__article');
    foreach($articles as $a){
	$articleurl=real_url($a['kpath']);
	$rootE->appendChild(create_url_node($dom,$articleurl,$a['nlastdate']));
	$maxurl--;
    }
    //其它模型的读取留言您了
    echo $dom->saveXML();
    $dom->save($path);
    Header("Location:/sitemap.xml");
}
function create_url_node($dom,$loc_val,$mdate_val){
    $cu=$dom->createElement('url');
    $cu->appendChild($dom->createElement('loc',$loc_val));
    $cu->appendChild($dom->createElement('lastmod',  date('Y-m-d', $mdate_val)));
    return $cu;
}
function real_url($url){
    global $king;
    $pl=(strpos($url,'PID')>0)?str_replace('PID','1',$url):$url;
    return empty($pl)?$king->config('siteurl'):$king->config('siteurl').'/'.$pl;
}
?>
