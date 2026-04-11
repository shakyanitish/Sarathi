<?php
$result='';

$menuRec = Menu::getMenuByParent(0,1);

$current_url = $_SERVER["REQUEST_URI"];
$data = explode('/',$current_url);

if($menuRec):
$result.='<nav>
	<ul>'; 	
		foreach($menuRec as $menuRow):	
			$linkActive=$PlinkActive='';
			$tot = strlen(SITE_FOLDER)+2;
			$data = substr($_SERVER['REQUEST_URI'], $tot);

			if(!empty($data)):	
				$linkActive = ($menuRow->linksrc==$data)?" active":"";
				$parentInfo	= Menu::find_by_linksrc($data);
				if($parentInfo):
					$PlinkActive = ($menuRow->id==$parentInfo->parentOf)?" active":"";
				endif;
			endif;
			$menusubRec = Menu::getMenuByParent($menuRow->id,1);	
			$drop1 = !empty($menusubRec)?'class="drop"':'';
			$result.='<li '.$drop1.'>';
			$result.= getMenuList($menuRow->name, $menuRow->linksrc, $menuRow->linktype, $linkActive.$PlinkActive);
				/* Second Level Menu */
				if($menusubRec):		
				$result.='<ul>';	
				foreach($menusubRec as $menusubRow): 
				   $menusub2Rec = Menu::getMenuByParent($menusubRow->id,1);	
				   $chkparent2 = (!empty($menusub2Rec))?1:0;
				   $drop2 = !empty($menusub2Rec)?'class="drop"':'';
				   $result.='<li id="menu-item-'.$menusubRow->id.'" '.$drop2.'>';
				   $result.= getMenuList($menusubRow->name, $menusubRow->linksrc, $menusubRow->linktype,$chkparent2);
				   		/* Third Level Menu */
				   		if($menusub2Rec):
				   			$result.='<ul>';
				   			foreach ($menusub2Rec as $menusub2Row):
				   				$menusub3Rec = Menu::getMenuByParent($menusub2Row->id,1);	
				   				$chkparent3 = (!empty($menusub3Rec))?1:0;
				   				$drop3 = !empty($menusub3Rec)?'class="drop"':'';
				   				$result.='<li id="menu-item-'.$menusub2Row->id.'" '.$drop3.'>';
				   				$result.= getMenuList($menusub2Row->name, $menusub2Row->linksrc, $menusub2Row->linktype,$chkparent3);
				   					/* Fourth Level Menu */
				   					if($menusub3Rec):
				   						$result.='<ul>';
				   						foreach($menusub3Rec as $menusub3Row):
				   							$menusub4Rec = Menu::getMenuByParent($menusub3Row->id,1);
				   							$chkparent4 = (!empty($menusub4Rec))?1:0;
				   							$result.='<li id="menu-item-'.$menusub2Row->id.'">';
				   							$result.= getMenuList($menusub3Row->name, $menusub3Row->linksrc, $menusub3Row->linktype,$chkparent4);
				   								/* Fifth Level Menu */
				   								if($menusub4Rec):
				   									$result.='<ul>';
				   									foreach($menusub4Rec as $menusub4Row):
				   										$menusub5Rec = Menu::getMenuByParent($menusub4Row->id,1);
				   										$chkparent5 = (!empty($menusub4Rec))?1:0;
				   										$result.='<li>'.getMenuList($menusub4Row->name, $menusub4Row->linksrc, $menusub4Row->linktype,$chkparent5).'</li>';
				   									endforeach;
				   									$result.='</ul>';
				   								endif;
				   							$result.='</li>';
				   						endforeach;			   							
				   						$result.='</ul>';
				   					endif;
				   				$result.='</li>';
				   			endforeach;
				   			$result.='</ul>';
				   	    endif;
				   	$result.='</li>';    
				endforeach;
				$result.='</ul>';
				endif;
			$result.='</li>';
		endforeach;
	$result.='</ul>
</nav>';
endif;			

$jVars['module:menu']= $result;

//Footer Menu
$result1='';
$FmenuRec = Menu::getMenuByParent(0,2);
if($FmenuRec):
	foreach($FmenuRec as $FmenuRow):
	   $result1.='<li>';
	   $result1.= getMenuList($FmenuRow->name, $FmenuRow->linksrc, $FmenuRow->linktype,'');
		   $subRec = Menu::getMenuByParent($FmenuRow->id,2);	
	   $result1.='</li>';
   	endforeach;
endif;
$jVars['module:bottom_menu']= $result1;


//Footer Menu 2
$result2='';
$FmenuRec = Menu::getMenuByParent(0,3);
if($FmenuRec):
	foreach($FmenuRec as $FmenuRow):
	   $result2.='<li>';
	   $result2.= getMenuList($FmenuRow->name, $FmenuRow->linksrc, $FmenuRow->linktype,'');
		   $subRec = Menu::getMenuByParent($FmenuRow->id,2);	
	   $result2.='</li>';
   	endforeach;
endif;
$jVars['module:bottom_menu2']= $result2;


//Footer Menu 3
$result3='';
$FmenuRec = Menu::getMenuByParent(0,4);
if($FmenuRec):
	foreach($FmenuRec as $FmenuRow):
	   $result3.='<li>';
	   $result3.= getMenuList($FmenuRow->name, $FmenuRow->linksrc, $FmenuRow->linktype,'');
		   $subRec = Menu::getMenuByParent($FmenuRow->id,2);	
	   $result3.='</li>';
   	endforeach;
endif;
$jVars['module:bottom_menu3']= $result3;

?>
