<a href="{U_INDEX}">{L_INDEX}</a>
&nbsp;
<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
</div>
<hr />
<div>
{L_POST_A}
<form action="{S_POST_ACTION}" method="post" name="post">
<div>
{ERROR_BOX}
</div>
<!-- BEGIN switch_username_select -->
<label for="username">{L_USERNAME}</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<br />
<!-- END switch_username_select -->
<!-- BEGIN switch_privmsg -->
<label for="username">{L_USERNAME}</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<br />
<!-- END switch_privmsg -->
<label for="subject">{L_SUBJECT}</label>
<input type="text" name="subject" id="subject" maxlength="60" value="{SUBJECT}" />
<br />
<textarea name="message" id="message" rows="8" cols="40">{MESSAGE}</textarea>
<br />
<input type="submit" name="post" id="post" value="{L_SUBMIT}" />
{S_HIDDEN_FORM_FIELDS}
</form>