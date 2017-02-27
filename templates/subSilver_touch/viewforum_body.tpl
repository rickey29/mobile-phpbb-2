<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li>
<a href="{U_VIEW_FORUM}" rel="external">{FORUM_NAME}</a>
</li>
<li>
<div>
<a href="{U_POST_NEW_TOPIC}" rel="external" data-role="button" data-inline="true" data-theme="b">{L_POST_NEW_TOPIC}</a>
</div>
</li>
<li data-role="list-divider">{FORUM_NAME}</li>
<!-- BEGIN topicrow -->
<li>
<a href="{topicrow.U_VIEW_TOPIC}" rel="external">
<h3>{topicrow.TOPIC_TITLE}</h3>
<p>{topicrow.TOPIC_AUTHOR}</p>
<span class="ui-li-count">{topicrow.REPLIES} / {topicrow.VIEWS}</span>
</a>
{topicrow.LAST_POST_IMG}
</li>
<!-- END topicrow -->
<!-- BEGIN switch_no_topics -->
<li>{L_NO_TOPICS}</li>
<!-- END switch_no_topics -->
</ul>
{PAGINATION}