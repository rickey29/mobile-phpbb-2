<!DOCTYPE html>
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
{META}
<title>{PAGE_TITLE}</title>
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />
<link rel="stylesheet" href="themes/jquery/docs/_assets/css/jqm-docs.css" />
<script src="themes/jquery/jquery-1.7.2.min.js"></script>
<script src="themes/jquery/docs/_assets/js/jqm-docs.js"></script>
<script src="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.min.js"></script>
<style type="text/css">
img { max-width:100%; height:auto; border:0px solid black; }
</style>
</head>
<body>
<div data-role="page" class="type-interior">
<div data-role="header" data-position="fixed">
<h1>{PAGE_TITLE}</h1>
</div>
<div data-role="content">
<div class="content-secondary">
<div data-role="collapsible" data-collapsed="true" data-theme="b" data-content-theme="d">
<ul data-role="listview" data-theme="c" data-dividertheme="d">
<li data-role="list-divider">{L_OPTIONS}</li>
<!-- BEGIN switch_user_logged_out -->
<li>
<a href="{U_REGISTER}" rel="external">{L_REGISTER}</a>
</li>
<!-- END switch_user_logged_out -->
<li>
<a href="{U_PRIVATEMSGS}" rel="external">{PRIVATE_MESSAGE_INFO}</a>
</li>
<li>
<a href="{U_LOGIN_LOGOUT}" rel="external">{L_LOGIN_LOGOUT}</a>
</li>
<!-- BEGIN switch_user_logged_in -->
<li>
<a href="{U_SEARCH_NEW}" rel="external">{L_SEARCH_NEW}</a>
</li>
<li>
<a href="{U_SEARCH_SELF}" rel="external">{L_SEARCH_SELF}</a>
</li>
<!-- END switch_user_logged_in -->
<li>
<a href="{U_SEARCH_UNANSWERED}" rel="external">{L_SEARCH_UNANSWERED}</a>
</li>
<li>
<a href="{U_SWITCH_TO_DESKTOP_STYLE}" rel="external">{L_SWITCH_TO_DESKTOP_STYLE}</a>
</li>
</ul>
</div>
</div>
<div class="content-primary">
<ul data-role="listview">