{*<!--
/*********************************************************************************
  ** The contents of this file are subject to the vtiger CRM Public License Version 1.0
   * ("License"); You may not use this file except in compliance with the License
   * The Original Code is:  vtiger CRM Open Source
   * The Initial Developer of the Original Code is vtiger.
   * Portions created by vtiger are Copyright (C) vtiger.
   * All Rights Reserved.
  *
 ********************************************************************************/
-->*}
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>{$CURRENT_USER} - {$APP.$CATEGORY} - {$APP.$MODULE_NAME} - {$APP.LBL_BROWSER_TITLE}</title>
<link REL="SHORTCUT ICON" HREF="themes/images/vtigercrm_icon.ico">
<style type="text/css">
@import url("themes/{$THEME}/style.css");
</style>
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
{* vtlib customization: Inclusion of custom javascript and css as registered *}
	{if $HEADERCSS}
<!-- Custom Header CSS -->
{foreach item=HDRCSS from=$HEADERCSS}
<link rel="stylesheet" type="text/css" href="{$HDRCSS->linkurl}">
</script>
{/foreach}
<!-- END -->
{/if}
	{* END *}
<!-- ActivityReminder customization for callback -->
{literal}
<style type="text/css">
div.fixedLay1 {
	position:fixed;
}
</style>
<!--[if lte IE 6]>
	<style type="text/css">div.fixedLay { position:absolute; }</style>
	<![endif]-->
{/literal}
<!-- End -->
<link rel="stylesheet" type="text/css" href="vcube/crm.css">
<script src="vcube/cufon-yui.js" type="text/javascript"></script>
<script src="vcube/Doris_400.font.js" type="text/javascript"></script>
<script type="text/javascript">
			Cufon.replace('h1'); // Works without a selector engine
			Cufon.replace('h2'); // Works without a selector engine
			Cufon.replace('h3'); // Works without a selector engine
			Cufon.replace('#sub1'); // Requires a selector engine for IE 6-7, see above
		</script>
</head><body leftmargin=0 topmargin=0 marginheight=0 marginwidth=0 class=small style="padding-left:200px">
<div class="backmenu">&quot;</div>
<div class="header_vcube"> <a name="top"></a> 
  <!-- header --> 
  <!-- header-vtiger crm name & RSS --> 
  <script language="JavaScript" type="text/javascript" src="include/js/json.js"></script> 
  <script language="JavaScript" type="text/javascript" src="include/js/general.js"></script> 
  <!-- vtlib customization: Javascript hook --> 
  <script language="JavaScript" type="text/javascript" src="include/js/vtlib.js"></script> 
  <!-- END --> 
  <script language="JavaScript" type="text/javascript" src="include/js/{php} echo $_SESSION['authenticated_user_language'];{/php}.lang.js?{php} echo $_SESSION['vtiger_version'];{/php}"></script> 
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
  <script type="text/javascript" src="jscalendar/lang/calendar-{$APP.LBL_JSCALENDAR_LANG}.js"></script> 
  
  <!-- asterisk Integration --> 
  {if $USE_ASTERISK eq 'true'} 
  <script type="text/javascript" src="include/js/asterisk.js"></script> 
  <script type="text/javascript">
    	if(typeof(use_asterisk) == 'undefined') use_asterisk = true;
    	</script> 
  {/if} 
  <!-- END --> 
  
  {* vtlib customization: Inclusion of custom javascript and css as registered *}
  {if $HEADERSCRIPTS} 
  <!-- Custom Header Script --> 
  {foreach item=HEADERSCRIPT from=$HEADERSCRIPTS} 
  <script type="text/javascript" src="{$HEADERSCRIPT->linkurl}"></script> 
  {/foreach} 
  <!-- END --> 
  {/if}
  {* END *}
  
  {* PREFECTHING IMAGE FOR BLOCKING SCREEN USING VtigerJS_DialogBox API *} <img src="{'layerPopupBg.gif'|@vtiger_imageurl:$THEME}" style="display: none;"/> {* END *}
  <TABLE border=0 cellspacing=0 cellpadding=0 width=100% class="hdrNameBg">
    <tr>
      <td valign=top><img src="test/logo/logo.jpg" alt="logo"/></td>
      <td width=100% align=center> {if $APP.$MODULE_NAME eq 'Dashboards'}
        <marquee id="rss" direction="left" scrolldelay="10" scrollamount="3" behavior="scroll" class="marStyle">
        &nbsp;{$ANNOUNCEMENT|escape}
        </marquee>
        {else}
        <marquee id="rss" direction="left" scrolldelay="10" scrollamount="3" behavior="scroll" class="marStyle">
        &nbsp;{$ANNOUNCEMENT}
        </marquee>
        {/if} </td>
      <td class=small nowrap><table border=0 cellspacing=0 cellpadding=0>
          <tr> 
            <!-- gmailbookmarklet customization --> <!-- END --> 
            {if $ADMIN_LINK neq ''} {* Show links only for admin *}			 {/if} </tr>
        </table></td>
    </tr>
  </TABLE>
  <div id='miniCal' style='width:300px; position:absolute; display:none; left:100px; top:100px; z-index:100000'> </div>
  {if $MODULE_NAME eq 'Calendar'}
  <div id="CalExport" style="width:300px; position:absolute; display:none; left:500px; top:100px; z-index:100000" class="layerPopup">
    <table border=0 cellspacing=0 cellpadding=5 width=100% class=layerHeadingULine>
      <tr>
        <td class="genHeaderSmall" nowrap align="left" width="30%" >{$APP.LBL_EXPORT} </td>
        <td align="right"><a href='javascript:ghide("CalExport");'><img src="{'close.gif'|@vtiger_imageurl:$THEME}" align="right" border="0"></a></td>
      </tr>
    </table>
    <table border=0 cellspacing=0 cellpadding=5 width=95% align=center>
      <tr>
        <td class="small"><table border=0 celspacing=0 cellpadding=5 width=100% align=center bgcolor=white>
            <tr>
              <td align="right" nowrap class="cellLabel small"><input class="small" type='radio' name='exportCalendar' value = 'iCal' onClick="$('ics_filename').removeAttribute('disabled');" checked />
                iCal Format </td>
              <td align="left"><input class="small" type='text' name='ics_filename' id='ics_filename' size='25' value='vtiger.calendar'/></td>
            </tr>
          </table></td>
      </tr>
    </table>
    <table border=0 cellspacing=0 cellpadding=5 width=100% class="layerPopupTransport">
      <tr>
        <td class="small" align="center"><input type="button" onClick="return exportCalendar();" value="Export" class="crmbutton small edit" name="button"/></td>
      </tr>
    </table>
  </div>
  <div id='CalImport' style='width:300px; position:absolute; display:none; left:500px; top:100px; z-index:100000' class="layerPopup"> {assign var='label_filename' value='LBL_FILENAME'}
    <form name='ical_import' id='ical_import' onSubmit="VtigerJS_DialogBox.block();" enctype="multipart/form-data" action="index.php" method="POST">
      <input type='hidden' name='module' value=''>
      <input type='hidden' name='action' value=''>
      <table border=0 cellspacing=0 cellpadding=5 width=100% class=layerHeadingULine>
        <tr>
          <td class="genHeaderSmall" nowrap align="left" width="30%" id="editfolder_info">{$APP.LBL_IMPORT}</td>
          <td align="right"><a href='javascript:ghide("CalImport");'><img src="{'close.gif'|@vtiger_imageurl:$THEME}" align="absmiddle" border="0"></a></td>
        </tr>
      </table>
      <table border=0 cellspacing=0 cellpadding=5 width=95% align=center>
        <tr>
          <td class="small"><table border=0 celspacing=0 cellpadding=5 width=100% align=center bgcolor=white>
              <tr>
                <td align="right" nowrap class="cellLabel small"><b>{$label_filename|@getTranslatedString} </b></td>
                <td align="left"><input class="small" type='file' name='ics_file' id='ics_file'/></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table border=0 cellspacing=0 cellpadding=5 width=100% class="layerPopupTransport">
        <tr>
          <td class="small" align="center"><input type="button" onClick="return importCalendar();" value="Import" class="crmbutton small edit" name="button"/></td>
        </tr>
      </table>
    </form>
  </div>
  {/if} 
  <!-- header - master tabs --> 
  <!-- - level 2 tabs starts--> 
  <!-- Level 2 tabs ends -->
  <div id="calculator_cont" style="position:absolute; z-index:10000" ></div>
  {include file="Clock.tpl"}
  <div id="qcform" style="position:absolute;width:700px;top:80px;left:450px;z-index:100000;"></div>
  
  <!-- Unified Search module selection feature -->
  <div id="UnifiedSearch_moduleformwrapper" style="position:absolute;width:400px;z-index:100002;display:none;"></div>
  <script type='text/javascript'>
{literal}
function UnifiedSearch_SelectModuleForm(obj) {
	if($('UnifiedSearch_moduleform')) {
		// If we have loaded the form already.
		UnifiedSearch_SelectModuleFormCallback(obj);
	} else {
		$('status').show();
		new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Home&action=HomeAjax&file=UnifiedSearchModules&ajax=true',
			onComplete: function(response) {
				$('status').hide();
				$('UnifiedSearch_moduleformwrapper').innerHTML = response.responseText;
				UnifiedSearch_SelectModuleFormCallback(obj);
			}
		});
	}
}
function UnifiedSearch_SelectModuleFormCallback(obj) {
	fnvshobj(obj, 'UnifiedSearch_moduleformwrapper');
}
function UnifiedSearch_SelectModuleToggle(flag) {
	Form.getElements($('UnifiedSearch_moduleform')).each(
		function(element) {
			if(element.type == 'checkbox') {
				element.checked = flag;
			}
		}
	);
}
function UnifiedSearch_SelectModuleCancel() {
	$('UnifiedSearch_moduleformwrapper').hide();
}
function UnifiedSearch_SelectModuleSave() {
	var UnifiedSearch_form = document.forms.UnifiedSearch;
	UnifiedSearch_form.search_onlyin.value = Form.serialize($('UnifiedSearch_moduleform')).replace(/search_onlyin=/g, '').replace(/&/g,',');
	UnifiedSearch_SelectModuleCancel();
}
{/literal}
</script> 
  <!-- End --> 
  
  <script>
var gVTModule = '{$smarty.request.module|@vtlib_purify}';
function fetch_clock()
{ldelim}
	new Ajax.Request(
		'index.php',
		{ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
			method: 'post',
			postBody: 'module=Utilities&action=UtilitiesAjax&file=Clock',
			onComplete: function(response)
				    {ldelim}
					$("clock_cont").innerHTML=response.responseText;
					execJS($('clock_cont'));
				    {rdelim}
		{rdelim}
	);

{rdelim}

function fetch_calc()
{ldelim}
	new Ajax.Request(
		'index.php',
		{ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
			method: 'post',
			postBody: 'module=Utilities&action=UtilitiesAjax&file=Calculator',
			onComplete: function(response)
					{ldelim}
						$("calculator_cont").innerHTML=response.responseText;
						execJS($('calculator_cont'));
					{rdelim}
		{rdelim}
	);
{rdelim}
</script> 
  <script>
{literal}
function QCreate(qcoptions){
	var module = qcoptions.options[qcoptions.options.selectedIndex].value;
	if(module != 'none'){
		$("status").style.display="inline";
		if(module == 'Events'){
			module = 'Calendar';
			var urlstr = '&activity_mode=Events';
		}else if(module == 'Calendar'){
			module = 'Calendar';
			var urlstr = '&activity_mode=Task';
		}else{
			var urlstr = '';
		}
		new Ajax.Request(
			'index.php',
				{queue: {position: 'end', scope: 'command'},
				method: 'post',
				postBody: 'module='+module+'&action='+module+'Ajax&file=QuickCreate'+urlstr,
				onComplete: function(response){
					$("status").style.display="none";
					$("qcform").style.display="inline";
					$("qcform").innerHTML = response.responseText;
					// Evaluate all the script tags in the response text.
					var scriptTags = $("qcform").getElementsByTagName("script");
					for(var i = 0; i< scriptTags.length; i++){
						var scriptTag = scriptTags[i];
						eval(scriptTag.innerHTML);
					}
                    eval($("qcform"));
                    posLay(qcoptions, "qcform");
				}
			}
		);
	}else{
		hide('qcform');
	}
}

function getFormValidate(divValidate)
{
  var st = document.getElementById('qcvalidate');
  eval(st.innerHTML);
  for (var i=0; i<qcfieldname.length; i++) {
		var curr_fieldname = qcfieldname[i];	
		if(window.document.QcEditView[curr_fieldname] != null)
		{
			var type=qcfielddatatype[i].split("~")
			var input_type = window.document.QcEditView[curr_fieldname].type;	
			if (type[1]=="M") {
					if (!qcemptyCheck(curr_fieldname,qcfieldlabel[i],input_type))
						return false
				}
			switch (type[0]) {
				case "O"  : break;
				case "V"  : break;
				case "C"  : break;
				case "DT" :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	 
						if (type[1]=="M")
							if (!qcemptyCheck(type[2],qcfieldlabel[i],getObj(type[2]).type))
								return false
						if(typeof(type[3])=="undefined") var currdatechk="OTH"
						else var currdatechk=type[3]

						if (!qcdateTimeValidate(curr_fieldname,type[2],qcfieldlabel[i],currdatechk))
							return false
						if (type[4]) {
							if (!dateTimeComparison(curr_fieldname,type[2],qcfieldlabel[i],type[5],type[6],type[4]))
								return false

						}
					}		
				break;
				case "D"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	
						if(typeof(type[2])=="undefined") var currdatechk="OTH"
						else var currdatechk=type[2]

							if (!qcdateValidate(curr_fieldname,qcfieldlabel[i],currdatechk))
								return false
									if (type[3]) {
										if (!qcdateComparison(curr_fieldname,qcfieldlabel[i],type[4],type[5],type[3]))
											return false
									}
					}	
				break;
				case "T"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	 
						if(typeof(type[2])=="undefined") var currtimechk="OTH"
						else var currtimechk=type[2]

							if (!timeValidate(curr_fieldname,qcfieldlabel[i],currtimechk))
								return false
									if (type[3]) {
										if (!timeComparison(curr_fieldname,qcfieldlabel[i],type[4],type[5],type[3]))
											return false
									}
					}
				break;
				case "I"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							if (!qcintValidate(curr_fieldname,qcfieldlabel[i]))
								return false
							if (type[2]) {
								if (!qcnumConstComp(curr_fieldname,qcfieldlabel[i],type[2],type[3]))
									return false
							}
						}
					}
				break;
				case "N"  :
					case "NN" :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							if (typeof(type[2])=="undefined") var numformat="any"
							else var numformat=type[2]

								if (type[0]=="NN") {

									if (!numValidate(curr_fieldname,qcfieldlabel[i],numformat,true))
										return false
								} else {
									if (!numValidate(curr_fieldname,qcfieldlabel[i],numformat))
										return false
								}
							if (type[3]) {
								if (!numConstComp(curr_fieldname,qcfieldlabel[i],type[3],type[4]))
									return false
							}
						}
					}
				break;
				case "E"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							var etype = "EMAIL"
								if (!qcpatternValidate(curr_fieldname,qcfieldlabel[i],etype))
									return false
						}
					}
				break;
			}
		}
	}
       //added to check Start Date & Time,if Activity Status is Planned.//start
        for (var j=0; j<qcfieldname.length; j++)
		{
			curr_fieldname = qcfieldname[j];
			if(window.document.QcEditView[curr_fieldname] != null)
			{
				if(qcfieldname[j] == "date_start")
				{
					var datelabel = qcfieldlabel[j]
						var datefield = qcfieldname[j]
						var startdatevalue = window.document.QcEditView[datefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
				}
				if(qcfieldname[j] == "time_start")
				{
					var timelabel = qcfieldlabel[j]
						var timefield = qcfieldname[j]
						var timeval=window.document.QcEditView[timefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
				}
				if(qcfieldname[j] == "eventstatus" || qcfieldname[j] == "taskstatus")
				{
					var statusvalue = window.document.QcEditView[curr_fieldname].options[window.document.QcEditView[curr_fieldname].selectedIndex].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
					var statuslabel = qcfieldlabel[j++]
				}
			}
		}
	if(statusvalue == "Planned")
        {
               var dateelements=splitDateVal(startdatevalue)
	       var hourval=parseInt(timeval.substring(0,timeval.indexOf(":")))
               var minval=parseInt(timeval.substring(timeval.indexOf(":")+1,timeval.length))
               var dd=dateelements[0]
               var mm=dateelements[1]
               var yyyy=dateelements[2]

               var chkdate=new Date()
               chkdate.setYear(yyyy)
               chkdate.setMonth(mm-1)
               chkdate.setDate(dd)
	       chkdate.setMinutes(minval)
               chkdate.setHours(hourval)
		if(!comparestartdate(chkdate)) return false;
		

	 }//end
	return true;
}
</SCRIPT> 
  {/literal}
  
  {* Quick Access Functionality *}
  <div id="allMenu" onMouseOut="fninvsh('allMenu');" onMouseOver="fnvshNrm('allMenu');" style="width:650px;z-index: 10000001;display:none; top:30px;">
    <table border=0 cellpadding="5" cellspacing="0" class="allMnuTable" >
      <tr>
        <td valign="top"> {assign var="parentno" value=0}
          {foreach name=parenttablist key=parenttab item=details from=$QUICKACCESS} <span class="allMnuHdr">{$APP[$parenttab]}</span> {foreach name=modulelist item=modules from=$details}
          {math assign="num" equation="x + y" x=$parentno y=1}
          {math assign="loopvalue" equation="x % y" x=$num y=15}
          {assign var="parentno" value=$num}
          {if $loopvalue eq '0'} </td>
        <td valign="top"> {/if}
          {assign var="modulelabel" value=$modules[1]|@getTranslatedString:$modules[0]} <a href="index.php?module={$modules.0}&action=index&parenttab={$parenttab}" class="allMnu">{$modulelabel}</a> {/foreach}
          {/foreach} </td>
      </tr>
    </table>
  </div>
  
  <!-- Drop Down Menu in the Main Tab -->
  <div id="test-accordion" class="accordion">{foreach name=parenttablist key=parenttab item=details from=$QUICKACCESS}
    <div class="accordion-toggle"><span style="display:none">COUNTER {$i++} - </span>{$APP[$parenttab]}</div>
    <div class="accordion-content">
      <table width="100%" border="0" cellpadding="0" cellspacing="0">
        {foreach name=modulelist item=modules from=$details}
        {assign var="modulelabel" value=$modules[1]|@getTranslatedString:$modules[0]}
        
        {* Use Custom module action if specified *}
        {assign var="moduleaction" value="index"}
        {if isset($modules[2])}
        {assign var="moduleaction" value=$modules[2]}
        {/if}
        <tr>
          <td><a href="index.php?module={$modules.0}&action={$moduleaction}&parenttab={$parenttab}&area={$i}" class="drop_down">{$modulelabel}</a></td>
        </tr>
        {/foreach}
      </table>
    </div>
    {/foreach}
  </div>
  <div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="{'status.gif'|@vtiger_imageurl:$THEME}"></div>
  <script>
function openwin()
{ldelim}
            window.open("index.php?module=Users&action=about_us","aboutwin","height=520,width=515,top=200,left=300")
{rdelim}

</script>
  <div id="tracker" style="display:none;position:absolute;z-index:100000001;" class="layerPopup">
    <table border="0" cellpadding="5" cellspacing="0" width="200">
      <tr style="cursor:move;">
        <td colspan="2" class="mailClientBg small" id="Track_Handle"><strong>{$APP.LBL_LAST_VIEWED}</strong></td>
        <td align="right" style="padding:5px;" class="mailClientBg small"><a href="javascript:;"><img src="{'close.gif'|@vtiger_imageurl:$THEME}" border="0"  onClick="fninvsh('tracker')" hspace="5" align="absmiddle"></a></td>
      </tr>
    </table>
    <table border="0" cellpadding="5" cellspacing="0" width="200" class="hdrNameBg">
      {foreach name=trackinfo item=trackelements from=$TRACINFO}
      <tr>
        <td class="trackerListBullet small" align="center" width="12">{$smarty.foreach.trackinfo.iteration}</td>
        <td class="trackerList small"><a href="index.php?module={$trackelements.module_name}&action=DetailView&record={$trackelements.crmid}&parenttab={$CATEGORY}">{$trackelements.item_summary}</a></td>
        <td class="trackerList small">&nbsp;</td>
      </tr>
      {/foreach}
    </table>
  </div>
  <script>
	var THandle = document.getElementById("Track_Handle");
	var TRoot   = document.getElementById("tracker");
	Drag.init(THandle, TRoot);
</script> 
  
  <!-- vtiger Feedback --> 
  <script type="text/javascript">
{literal}
function vtiger_feedback() {
	window.open("http://www.vtiger.com/products/crm/feedback.php?uid={/literal}{php}global $application_unique_key; echo $application_unique_key;{/php}{literal}","feedbackwin","height=300,width=515,top=200,left=300")
}
{/literal}
</script> 
  <!-- vtiger news --> 
  <script type="text/javascript">
{literal}
function vtiger_news(obj) {
	$('status').style.display = 'inline';
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Home&action=HomeAjax&file=HomeNews',
			onComplete: function(response) {
				$("vtigerNewsPopupLay").innerHTML=response.responseText;
				fnvshobj(obj, 'vtigerNewsPopupLay');
				$('status').style.display = 'none';
			}
		}
	);
		
}
{/literal}
</script>
  <div class="lvtCol fixedLay1" id="vtigerNewsPopupLay" style="display: none; height: 250px; bottom: 2px; padding: 2px; z-index: 12; font-weight: normal;" align="left"> </div>
  <!-- END --> 
  
  <!-- ActivityReminder Customization for callback -->
  <div class="lvtCol fixedLay1" id="ActivityRemindercallback" style="border: 0; right: 0px; bottom: 2px; display:none; padding: 2px; z-index: 10; font-weight: normal;" align="left"> </div>
  <!-- End --> 
  
  <!-- divs for asterisk integration -->
  <div class="lvtCol fixedLay1" id="notificationDiv" style="float: right;  padding-right: 5px; overflow: hidden; border-style: solid; right: 0px; border-color: rgb(141, 141, 141); bottom: 0px; display: none; padding: 2px; z-index: 10; font-weight: normal;" align="left"> </div>
  <div id="OutgoingCall" style="display: none;position: absolute;z-index:200;" class="layerPopup">
    <table  border='0' cellpadding='5' cellspacing='0' width='100%'>
      <tr style='cursor:move;' >
        <td class='mailClientBg small' id='outgoing_handle'><b>{$APP.LBL_OUTGOING_CALL}</b></td>
      </tr>
    </table>
    <table  border='0' cellpadding='0' cellspacing='0' width='100%' class='hdrNameBg'>
        </tr>
      
      <tr>
        <td style='padding:10px;' colspan='2'> {$APP.LBL_OUTGOING_CALL_MESSAGE} </td>
      </tr>
    </table>
  </div>
</div>
<!-- divs for asterisk integration :: end-->
<div id="topmenu">
<span><a href="index.php?module=Users&action=Logout">{$APP.LBL_LOGOUT}</a> ({$CURRENT_USER})</span>
<span><a href="index.php?module=Users&action=DetailView&record={$CURRENT_USER_ID}&modechk=prefview">{$APP.LBL_MY_PREFERENCES}</a></span>
</div>