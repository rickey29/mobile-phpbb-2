<li>
<a href="{U_INDEX}" rel="external">{L_INDEX}</a>
</li>
<li>
<a href="{U_VIEW_FORUM}" rel="external">{FORUM_NAME}</a>
</li>
<li>
<div data-role="navbar">
<ul>
<li>
<a href="{U_VIEW_OLDER_TOPIC}" rel="external" class="ui-btn-active">{L_VIEW_PREVIOUS_TOPIC}</a>
</li>
<li>
<a href="{U_VIEW_NEWER_TOPIC}" rel="external" class="ui-btn-active">{L_VIEW_NEXT_TOPIC}</a>
</li>
</ul>
</div>
</li>
<li>
<div>
<a href="{U_POST_REPLY_TOPIC}" rel="external" data-role="button" data-inline="true" data-theme="b">{L_POST_REPLY_TOPIC}</a>
</div>
</li>
<li data-role="list-divider">{TOPIC_TITLE}</li>
<!-- BEGIN postrow -->
<li>
<h3>{postrow.POST_SUBJECT}</h3>
<p>{postrow.POSTER_NAME}</p>
<p class="ui-li-aside">{postrow.POST_DATE}</p>
<div>
{postrow.MESSAGE}
</div>
</li>
<!-- END postrow -->
</ul>
{PAGINATION}