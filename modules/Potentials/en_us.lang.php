<?php
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Public License Version 1.1.2
 * ("License"); You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an  "AS IS"  basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 * The Original Code is:  SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 ********************************************************************************/
/*********************************************************************************
 * $Header: /advent/projects/wesat/vtiger_crm/sugarcrm/modules/Dashboard/language/en_us.lang.php,v 1.4 2005/01/25 06:01:38 jack Exp $
 * Description:  Defines the English language pack for the Account module.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.
 * All Rights Reserved.
 * Contributor(s): ______________________________________..
 ********************************************************************************/
 
$mod_strings = Array(
'LBL_SALES_STAGE_FORM_TITLE'=>'Pipeline By Sales Stage',
'LBL_SALES_STAGE_FORM_DESC'=>'Shows cumulative opportunity amounts by selected sales stages for selected users where the expected closed date is within the specificed date range.',
'LBL_MONTH_BY_OUTCOME'=>'Pipeline By Month By Outcome',
'LBL_MONTH_BY_OUTCOME_DESC'=>'Shows cumulative opportunity amounts by month by outcome for selected users where the expected closed date is within the specificed date range.  Outcome is based on whether the sales stage is Closed Won, Closed Lost or any other value.',
'LBL_LEAD_SOURCE_FORM_TITLE'=>'All Opportunities By Lead Source',
'LBL_LEAD_SOURCE_FORM_DESC'=>'Shows cumulative opportunity amounts by selected lead source for selected users.',
'LBL_LEAD_SOURCE_BY_OUTCOME'=>'All Opportunities By Lead Source By Outcome',
'LBL_LEAD_SOURCE_BY_OUTCOME_DESC'=>'Shows cumulative opportunity amounts by selected lead source by outcome for selected users where the expected closed date is within the specificed date range.  Outcome is based on whether the sales stage is Closed Won, Closed Lost or any other value.',
'LBL_PIPELINE_FORM_TITLE_DESC'=>'Shows cumulative amounts by selected sales stages for your opportunities where the expected closed date is within the specificed date range.',
'LBL_DATE_RANGE'=>'Date range is',
'LBL_DATE_RANGE_TO'=>'to',
'ERR_NO_OPPS'=>'Please create some Opportunities to see Opportunity graphs.',
'LBL_TOTAL_PIPELINE'=>'Pipeline total is ',
'LBL_ALL_OPPORTUNITIES'=>'Total amount of all opportunities is ',
'LBL_OPP_SIZE'=>'Opportunity size in ',
'LBL_OPP_SIZE_VALUE'=>'1K',
'NTC_NO_LEGENDS'=>'None',
'LBL_LEAD_SOURCE_OTHER'=>'Other',
'LBL_EDIT'=>'Edit',
'LBL_REFRESH'=>'Refresh',
'LBL_CREATED_ON'=>'Last run on ',
'LBL_OPPS_IN_STAGE'=>'opportunities where sales stage is',
'LBL_OPPS_IN_LEAD_SOURCE'=>'opportunities where lead source is',
'LBL_OPPS_OUTCOME'=>'opportunities where outcome is',
'LBL_USERS'=>'Users:',
'LBL_SALES_STAGES'=>'Sales Stages:',
'LBL_LEAD_SOURCES'=>'Lead Sources:',
'LBL_DATE_START'=>'Begin Date:',
'LBL_DATE_END'=>'End Date:',
//Added for 5.0 
'LBL_NO_PERMISSION'=>'Sorry, you don\'t have access to view the Graph for this module',
'LBL_NO_PERMISSION_FIELD'=>'Sorry, you don\'t have access to view the Graph for this module or for the Field',

"leadsource" => "Leads By Source",
"leadstatus" => "Leads By Status",
"leadindustry" => "Leads By Industry",
"salesbyleadsource" => "Sales by LeadSource",
"salesbyaccount" => "Sales by Accounts",
"salesbyuser" => "Sales by User",
"salesbyteam"=>"Sales by Team",
"accountindustry" => "Account By Industry",
"productcategory" => "Products by Category",
"productbyqtyinstock" => "Products by Quantity in stock",
"productbypo" => "Products by PurchaseOrder",
"productbyquotes" => "Products by Quotes",
"productbyinvoice" => "Products by Invoice",
"sobyaccounts" => "Sales Order by Accounts",
"sobystatus" => "Sales Order by Status",
"pobystatus" => "Purchase Order by Status",
"quotesbyaccounts" => "Quotes by Accounts",
"quotesbystage" => "Quotes by Stage",
"invoicebyacnts" => "Invoices by Accounts",
"invoicebystatus" => "Invoices by Status",
"ticketsbystatus" => "Tickets by Status",
"ticketsbypriority" => "Tickets by Priority",
"ticketsbycategory" => "Tickets by Category",
"ticketsbyuser"=>"Tickets by User",
"ticketsbyteam"=>"Tickets by Team",
"ticketsbyproduct"=>"Tickets by Product",
"contactbycampaign"=>"Contacts by Campaign",
"ticketsbyaccount"=>"Tickets by Account",
"ticketsbycontact"=>"Tickets by Contact",
//customize
"salesbyopportunity"=>"Opportunities by Sales Stage",


'LBL_DASHBRD_HOME'=>'Dashboard Home',
'LBL_HORZ_BAR_CHART'=>'Horizontal Bar Chart',
'LBL_VERT_BAR_CHART'=>'Vertical Bar Chart',
'LBL_PIE_CHART'=>'Pie Chart',
'LBL_NO_DATA'=>'No data available',
'DashboardHome'=>'Dashboard Home',
'GRIDVIEW'=>'Grid view',
'NORMALVIEW'=>'Normal view',
'VIEWCHART'=>'View Chart',
'LBL_DASHBOARD'=>'Dashboard',

// Added/Updated for vtiger CRM 5.0.4
"Approved"=>"Approved",
"Created"=>"Created",
"Cancelled"=>"Cancelled",
"Delivered"=>"Delivered",
"Received Shipment"=>"Received Shipments",
"Sent"=>"Sent",
"Credit Invoice"=>"Credit Invoice",
"Paid"=>"Paid",
"Un Assigned"=>"Un Assigned",
"Cold Call"=>"Cold Call",
"Existing Customer"=>"Existing Customer",
"Self Generated"=>"Self Generated",
"Employee"=>"Employee",
"Partner"=>"Partner",
"Public Relations"=>"Public Relations",
"Direct Mail"=>"Direct Mail",
"Conference"=>"Conference",
"Trade Show"=>"Trade Show",
"Web Site"=>"Web Site",
"Word of mouth"=>"Word of mouth",
"Other"=>"Other",
"--None--"=>"None",
"Attempted to Contact"=>"Attempted to Contact",
"Cold"=>"Cold",
"Contact in Future"=>"Contact in Future",
"Contacted"=>"Contacted",
"Hot"=>"Hot",
"Junk Lead"=>"Junk Lead",
"Lost Lead"=>"Lost Lead",
"Not Contacted"=>"Not Contacted",
"Pre Qualified"=>"Pre Qualified",
"Qualified"=>"Qualified",
"Warm"=>"Warm",
"Apparel"=>"Apparel",
"Banking"=>"Banking",
"Biotechnology"=>"Biotechnology",
"Chemicals"=>"Chemicals",
"Communications"=>"Communications",
"Construction"=>"Constructions",
"Consulting"=>"Consulting",
"Education"=>"Education",
"Electronics"=>"Electronics",
"Energy"=>"Energy",
"Engineering"=>"Engineering",
"Entertainment"=>"Entertainment",
"Environmental"=>"Environmental",
"Finance"=>"Finance",
"Food & Beverage"=>"Food & Beverage",
"Government"=>"Government",
"Healthcare"=>"Healthcare",
"Hospitality"=>"Hospitality",
"Insurance"=>"Insurance",
"Machinery"=>"Machinery",
"Manufacturing"=>"Manufacturing",
"Media"=>"Media",
"Not For Profit"=>"Not For Profit",
"Recreation"=>"Recreation",
"Retail"=>"Retail",
"Shipping"=>"Shipping",
"Technology"=>"Technology",
"Telecommunications"=>"Telecommunications",
"Transportation"=>"Transportation",
"Utilities"=>"Utilities",
"Hardware"=>"Hardware",
"Software"=>"Software",
"CRM Applications"=>"CRM Applications",
"Open"=>"Open",
"In Progress"=>"In Progress",
"Wait For Response"=>"Wait For Response",
"Closed"=>"Closed",
"Low"=>"Low",
"Normal"=>"Normal",
"High"=>"High",
"Urgent"=>"Urgent",
"Big Problem"=>"Big Problem",
"Small Problem"=>"Small Problem",
"Other Problem"=>"Other Problem",
"Accepted"=>"Accepted",
"Rejected"=>"Rejected",
"Prospecting"=>"Prospecting",
"Qualification"=>"Qualifications",
"Needs Analysis"=>"Needs Analysis",
"Value Proposition"=>"Value Propositions",
"Id. Decision Makers"=>"Id. Decision Makers",
"Perception Analysis"=>"Perception Analysis",
"Proposal/Price Quote"=>"Proposal/Price Quotes",
"Negotiation/Review"=>"Negotiation/Review",
"Closed Won"=>"Closed Won",
"Closed Lost"=>"Closed Lost",

);

?>