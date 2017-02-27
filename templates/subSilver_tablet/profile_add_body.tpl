<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li data-role="list-divider">{L_REGISTRATION_INFO}</li>
<div>
{ERROR_BOX}
</div>
<li>
<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">
<fieldset data-role="controlgroup">
<!-- BEGIN switch_namechange_allowed -->
<label for="username">{L_USERNAME}&nbsp;&#42;</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<!-- END switch_namechange_allowed -->
<label for="email">{L_EMAIL_ADDRESS}&nbsp;&#42;</label>
<input type="text" name="email" id="email" maxlength="255" value="{EMAIL}" />
<label for="new_password">{L_NEW_PASSWORD}&nbsp;&#42;</label>
<input type="password" name="new_password" id="new_password" maxlength="32" value="{NEW_PASSWORD}" />
<label for="password_confirm">{L_CONFIRM_PASSWORD}&nbsp;&#42;</label>
<input type="password" name="password_confirm" id="password_confirm" maxlength="32" value="{PASSWORD_CONFIRM}" />
<!-- BEGIN switch_confirm -->
<div>
{CONFIRM_IMG}
</div>
<label for="confirm_code">{L_CONFIRM_CODE}&nbsp;&#42;</label>
<input type="text" name="confirm_code" id="confirm_code" maxlength="6" value="" />
<!-- END switch_confirm -->
</fieldset>
<fieldset data-role="controlgroup">
<input type="submit" name="submit" id="submit" value="{L_SUBMIT}" data-theme="a" />
<input type="reset" name="reset" id="reset" value="{L_RESET}" data-theme="a" />
</fieldset>
{S_HIDDEN_FIELDS}
</form>
</li>
</ul>