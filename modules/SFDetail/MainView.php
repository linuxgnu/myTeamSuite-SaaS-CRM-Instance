<?php 
global $app_strings, $mod_strings, $current_language, $currentModule, $theme;
global $list_max_entries_per_page, $adb;

require_once('Smarty_setup.php');
?>

<link  href="modules/SFDetail/css/Style.css" rel="stylesheet" type="text/css">
  <script src="modules/SFDetail/js/jquery.js" type="text/javascript" ></script>
  <script type="text/javascript">
	  var $j = jQuery;
  </script>
  <script language="JavaScript" type="text/javascript" src="include/js/json.js"></script> 
  <script language="JavaScript" type="text/javascript" src="include/js/general.js"></script> 
  <!-- vtlib customization: Javascript hook --> 
  <script language="JavaScript" type="text/javascript" src="include/js/vtlib.js"></script> 
  <!-- END --> 
  <script language="JavaScript" type="text/javascript" src="include/js/en_us.lang.js?"></script> 
  <script language="JavaScript" type="text/javascript" src="include/js/QuickCreate.js"></script> 
  <script type="text/javascript" src="include/scriptaculous/prototype.js"></script> 
  <script type="text/javascript" src="include/scriptaculous/scriptaculous.js"></script> 
  <script type="text/javascript" src="include/scriptaculous/accordion.js"></script> 
  <script language="JavaScript" type="text/javascript" src="include/js/menu.js"></script> 
  <script language="JavaScript" type="text/javascript" src="include/calculator/calc.js"></script> 
  <script language="JavaScript" type="text/javascript" src="modules/Calendar/script.js"></script> 
  <script language="javascript" type="text/javascript" src="include/scriptaculous/dom-drag.js"></script> 
  <script language="JavaScript" type="text/javascript" src="include/js/notificationPopup.js"></script> 
  <script type="text/javascript" src="jscalendar/calendar.js"></script> 
  <script type="text/javascript" src="jscalendar/calendar-setup.js"></script> 
  <script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script> 
  <!-- asterisk Integration --> 
 <div>
 		<script type="text/javascript" src="modules/Potentials/Potentials.js"></script>
<!--START BUTTONS-->
<TABLE border=0 cellspacing=0 cellpadding=0 width=100% class="small homePageButtons">
<tr style="cursor: pointer;">
			
	<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap>Sales Forcast > <a class="hdrLink" href="index.php?module=SFDetail&action=index&parenttab=Sales&area=3">Forecast Detail</a></td>
	</td>
</tr>
</TABLE>
 <hr/>
 </div>
<div class="mainDiv" style="width:98%;">
        <table border="0" cellspacing="1" cellpadding="3" class="lvt small" style="width:100%;" id="pane1_tbl">
        <tr>
        <td class="lvtCol">
        <a href="javascript:void(0);">User Name</a>
        </td>
         <td class="lvtCol">
        <a href="javascript:void(0);">Current Week</a>
        </td>
        <td class="lvtCol">
        <a href="javascript:void(0);">Following Week</a>
        </td>
        <td class="lvtCol">
        <a href="javascript:void(0);">Total</a>
        </td>
        </tr>
        <?php include("Ajax/Module3.php"); ?>
        </table>
        	

</div>