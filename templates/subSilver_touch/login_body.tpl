<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li data-role="list-divider">{L_ENTER_PASSWORD}</li>
<li>
<form action="{S_LOGIN_ACTION}" method="post">
<div data-role="fieldcontain">
<label for="username">{L_USERNAME}&#58;</label>
<input type="text" name="username" id="username" maxlength="40" value="{USERNAME}" />
</div>
<div data-role="fieldcontain">
<label for="password">{L_PASSWORD}&#58;</label>
<input type="password" name="password" id="password" maxlength="32" />
</div>
<!-- BEGIN switch_allow_autologin -->
<div data-role="fieldcontain">
<fieldset data-role="controlgroup">
<legend></legend>
<input type="checkbox" name="autologin" id="autologin" />
<label for="autologin">{L_AUTO_LOGIN}</label>
</fieldset>
</div>
<!-- END switch_allow_autologin -->
<div data-role="fieldcontain">
<input type="submit" name="login" id="login" value="{L_LOGIN}" data-theme="a" />
</div>
{S_HIDDEN_FIELDS}
</form>
</li>
</ul>