<!DOCTYPE html>
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="content-type" content="text/html; charset={S_CONTENT_ENCODING}" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
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
<div data-role="page">
<div data-role="header" data-position="fixed">
<h1>{PAGE_TITLE}</h1>
</div>
<div data-role="content">
<ul data-role="listview">
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