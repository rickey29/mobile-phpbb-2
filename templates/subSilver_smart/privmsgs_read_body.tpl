<a href="{U_INDEX}">{L_INDEX}</a>
</div>
<hr />
<div>
{INBOX}
&nbsp;
{SENTBOX}
&nbsp;
{OUTBOX}
&nbsp;
{SAVEBOX}
</div>
<hr />
<div>
{REPLY_PM_IMG}
</div>
<hr />
<div>
{BOX_NAME}&nbsp;&#58;&#58;&nbsp;{L_MESSAGE}
</div>
<hr />
<div>
{POST_SUBJECT}
<br />
{L_FROM}&#58;&nbsp;{MESSAGE_FROM}
<br />
{L_TO}&#58;&nbsp;{MESSAGE_TO}
<br />
{L_POSTED}&#58;&nbsp;{POST_DATE}
<br />
{MESSAGE}
</div>
<hr />
<div>
<form method="post" action="{S_PRIVMSGS_ACTION}">
<input type="submit" name="save" id="save" value="{L_SAVE_MSG}" />
<input type="submit" name="delete" id="delete" value="{L_DELETE_MSG}" />
{S_HIDDEN_FIELDS}
</form>