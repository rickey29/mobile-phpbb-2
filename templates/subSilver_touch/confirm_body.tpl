<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li data-role="list-divider">{MESSAGE_TITLE}</li>
<li>{MESSAGE_TEXT}</li>
<li>
<form action="{S_CONFIRM_ACTION}" method="post">
<fieldset data-role="controlgroup">
<input type="submit" name="confirm" id="confirm" value="{L_YES}" data-theme="a" />
<input type="submit" name="cancel" id="cancel" value="{L_NO}" data-theme="a" />
</fieldset>
{S_HIDDEN_FIELDS}
</form>
</li>
</ul>