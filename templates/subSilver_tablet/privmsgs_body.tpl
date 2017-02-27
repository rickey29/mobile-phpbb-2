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
{POST_PM_IMG}
</div>
</li>
<li data-role="list-divider">{PAGE_TITLE}</li>
<!-- BEGIN listrow -->
<li>
<a href="{listrow.U_READ}" rel="external">
<h3>{listrow.SUBJECT}</h3>
<p>
{listrow.FROM}&nbsp;&gt;&nbsp;{listrow.DATE}
</p>
</a>
</li>
<!-- END listrow -->
<!-- BEGIN switch_no_messages -->
<li>{L_NO_MESSAGES}</li>
<!-- END switch_no_messages -->
</ul>
{PAGINATION}