<a href="{U_INDEX}">{L_INDEX}</a>
</div>
<hr />
<div>
{L_ENTER_PASSWORD}
<form action="{S_LOGIN_ACTION}" method="post">
<label for="username">{L_USERNAME}&#58;</label>
<input type="text" name="username" id="username" maxlength="40" value="{USERNAME}" />
<br />
<label for="password">{L_PASSWORD}&#58;</label>
<input type="password" name="password" id="password" maxlength="32" />
<!-- BEGIN switch_allow_autologin -->
<br />
<input type="checkbox" name="autologin" id="autologin" />
<label for="autologin">{L_AUTO_LOGIN}</label>
<!-- END switch_allow_autologin -->
<br />
<input type="submit" name="login" id="login" value="{L_LOGIN}" />
{S_HIDDEN_FIELDS}
</form>