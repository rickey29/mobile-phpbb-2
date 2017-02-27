<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li>
<div data-role="navbar">
<ul>
<li>
{INBOX}
</li>
<li>
{SENTBOX}
</li>
<li>
{OUTBOX}
</li>
<li>
{SAVEBOX}
</li>
</ul>
</div>
</li>
<li>
<div>
{REPLY_PM_IMG}
</div>
</li>
<li data-role="list-divider">{BOX_NAME}&nbsp;&#58;&#58;&nbsp;{L_MESSAGE}</li>
<li>
<h3>{POST_SUBJECT}</h3>
<p>
{L_FROM}&#58;&nbsp;{MESSAGE_FROM}
<br />
{L_TO}&#58;&nbsp;{MESSAGE_TO}
<br />
{L_POSTED}&#58;&nbsp;{POST_DATE}
</p>
<div>
{MESSAGE}
</div>
</li>
<li
<form method="post" action="{S_PRIVMSGS_ACTION}">
<div data-role="fieldcontain">
<fieldset data-role="controlgroup" data-type="horizontal">
<input type="submit" name="save" id="save" value="{L_SAVE_MSG}" data-theme="a" />
<input type="submit" name="delete" id="delete" value="{L_DELETE_MSG}" data-theme="a" />
</fieldset>
</div>
{S_HIDDEN_FIELDS}
</form>
</li>
</ul>