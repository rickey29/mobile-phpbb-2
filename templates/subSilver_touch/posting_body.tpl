<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li>
<a href="{U_VIEW_FORUM}" rel="external">{FORUM_NAME}</a>
</li>
<li data-role="list-divider">{L_POST_A}</li>
<li>
<form action="{S_POST_ACTION}" method="post" name="post">
<div>
{ERROR_BOX}
</div>
<fieldset data-role="controlgroup">
<!-- BEGIN switch_username_select -->
<label for="username">{L_USERNAME}</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<!-- END switch_username_select -->
<!-- BEGIN switch_privmsg -->
<label for="username">{L_USERNAME}</label>
<input type="text" name="username" id="username" maxlength="25" value="{USERNAME}" />
<!-- END switch_privmsg -->
<label for="subject">{L_SUBJECT}</label>
<input type="text" name="subject" id="subject" maxlength="60" value="{SUBJECT}" />
<textarea name="message" id="message" rows="8" cols="40">{MESSAGE}</textarea>
</fieldset>
<fieldset data-role="controlgroup">
<input type="submit" name="post" id="post" value="{L_SUBMIT}" data-theme="a" />
</fieldset>
{S_HIDDEN_FORM_FIELDS}
</form>
</li>
</ul>