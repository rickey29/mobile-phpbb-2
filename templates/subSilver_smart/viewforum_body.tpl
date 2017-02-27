<a href="{U_INDEX}">{L_INDEX}</a>
&nbsp;&gt;&nbsp;
<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>
</div>
<hr />
<div>
<a href="{U_POST_NEW_TOPIC}">{L_POST_NEW_TOPIC}</a>
</div>
<hr />
<div>
{FORUM_NAME}
<!-- BEGIN topicrow -->
<br />
<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a>
&nbsp;
({topicrow.REPLIES} / {topicrow.VIEWS})
<!-- END topicrow -->
<!-- BEGIN switch_no_topics -->
<br />
{L_NO_TOPICS}
<!-- END switch_no_topics -->
{PAGINATION}