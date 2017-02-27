<a href="{U_INDEX}">{L_INDEX}</a>
</div>
<hr />
<div>
{L_REGISTRATION_INFO}
<br />
{ERROR_BOX}
<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">
<!-- BEGIN switch_namechange_allowed -->
<label for="username">{L_USERNAME}&nbsp;&#42;</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<br />
<!-- END switch_namechange_allowed -->
<label for="email">{L_EMAIL_ADDRESS}&nbsp;&#42;</label>
<input type="text" name="email" id="email" maxlength="255" value="{EMAIL}" />
<br />
<label for="new_password">{L_NEW_PASSWORD}&nbsp;&#42;</label>
<input type="password" name="new_password" id="new_password" maxlength="32" value="{NEW_PASSWORD}" />
<br />
<label for="password_confirm">{L_CONFIRM_PASSWORD}&nbsp;&#42;</label>
<input type="password" name="password_confirm" id="password_confirm" maxlength="32" value="{PASSWORD_CONFIRM}" />
<!-- BEGIN switch_confirm -->
<br />
{CONFIRM_IMG}
<br />
<label for="confirm_code">{L_CONFIRM_CODE}&nbsp;&#42;</label>
<input type="text" name="confirm_code" id="confirm_code" maxlength="6" value="" />
<!-- END switch_confirm -->
<br />
<input type="submit" name="submit" id="submit" value="{L_SUBMIT}" data-theme="a" />
&nbsp;
<input type="reset" name="reset" id="reset" value="{L_RESET}" data-theme="a" />
{S_HIDDEN_FIELDS}
</form>