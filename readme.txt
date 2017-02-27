Mobile phpBB 2 Readme
################
version: Bali Release, Load 2.0
last update: Fri., Oct. 03, 2014


Description
++++++++++++++++
Mobile phpBB 2 (MphpBB2) is a mobile-friendly phpBB 2 theme.

Please do NOT use this software when you are driving -- looking at mobile screen while driving is very dangerous.  If you are a webmaster, please forward this caution to your end users.


Highlight
++++++++++++++++
None.


Open Issue
++++++++++++++++
None.


Infrastructure
++++++++++++++++
This version is developed based on phpBB version 2.0.0 to 2.0.23.


Installation
++++++++++++++++
step 0:
================
Assume your phpBB2 web site is located at: "http://yoursite.com".

step 1:
================
Please backup your database.  This step is not mandatory for MphpBB2 installation.  However, it provides convenience when you want to restore the system in case of any unhappy.

step 2:
================
Please backup following files.  This step is not mandatory for MphpBB2 installation.  However, it provides convenience when you want to restore the system in case of any unhappy.
 -- http://yoursite.com/index.php
 -- http://yoursite.com/login.php
 -- http://yoursite.com/posting.php
 -- http://yoursite.com/privmsg.php
 -- http://yoursite.com/viewforum.php
 -- http://yoursite.com/includes/functions.php
 -- http://yoursite.com/includes/functions_post.php
 -- http://yoursite.com/includes/page_header.php
 -- http://yoursite.com/includes/usercp_register.php
 -- http://yoursite.com/language/lang_main.php

step 3:
================
Extract MphpBB2 zip package on your PC, you will get a "mphpbb2" directory.

step 4:
================
Upload the "mobile" directory (within "mphpbb2") to your web site -- you will have "http://yoursite.com/mobile/" directory.

step 5:
================
Upload following directories (within "mphpbb2"):
 -- templates/subSilver_smart
 -- templates/subSilver_tablet
 -- templates/subSilver_touch
to your web site -- you will have following directories:
 -- http://yoursite.com/templates/subSilver_smart/
 -- http://yoursite.com/templates/subSilver_tablet/
 -- http://yoursite.com/templates/subSilver_touch/

step 6:
================
Upload the "themes" directory (within "mphpbb2") to your web site -- you will have "http://yoursite.com/themes/" directory.

step 7:
================
OPEN
----------------
index.php

FIND
----------------
	$page_title = $lang['Index'];

REPLACE WITH
----------------
	if ( defined('MPHPBB2') && MPHPBB2 != 'tablet' && isset($HTTP_GET_VARS['flx-mode']) && $HTTP_GET_VARS['flx-mode'] == 'option' )
	{
		$page_title = $lang['Options'];
	}
	else
	{
		$page_title = $board_config['sitename'];
	}

FIND
----------------
	$template->set_filenames(array(
		'body' => 'index_body.tpl')
	);

REPLACE WITH
----------------
	if ( defined('MPHPBB2') && MPHPBB2 != 'tablet' && isset($HTTP_GET_VARS['flx-mode']) && $HTTP_GET_VARS['flx-mode'] == 'option' )
	{
		$template->set_filenames(array(
			'body' => 'options_body.tpl')
		);
	}
	else
	{
		$template->set_filenames(array(
			'body' => 'index_body.tpl')
		);
	}

step 8:
================
OPEN
----------------
login.php

FIND
----------------
				$message = $lang['Error_login'] . '<br /><br />' . sprintf($lang['Click_return_login'], "<a href=\"login.$phpEx?redirect=$redirect\">", '</a>') . '<br /><br />' .  sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');

REPLACE WITH
----------------
				if ( defined('MPHPBB2') )
				{
					$message = $lang['Error_login'] . "\n";
					if ( MPHPBB2 != 'smart' )
					{
						$message .= '</li>' . "\n";
						$message .= '<li>' . "\n";
						$message .= '<div>' . "\n";
						$message .= '<a href="' . "login.$phpEx?redirect=$redirect" . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_login'], '', '') . '</a>' . "\n";
						$message .= '<a href="' . append_sid("index.$phpEx") . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
						$message .= '</div>' . "\n";
					}
					else
					{
						$message .= '<a href="' . "login.$phpEx?redirect=$redirect" . '">' . sprintf($lang['Click_return_login'], '', '') . '</a>' . "\n";
						$message .= '<br />' . "\n";
						$message .= '<a href="' . append_sid("index.$phpEx") . '">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
					}
				}
				else
				{
					$message = $lang['Error_login'] . '<br /><br />' . sprintf($lang['Click_return_login'], "<a href=\"login.$phpEx?redirect=$redirect\">", '</a>') . '<br /><br />' .  sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
				}

FIND
----------------
			$message = $lang['Error_login'] . '<br /><br />' . sprintf($lang['Click_return_login'], "<a href=\"login.$phpEx?redirect=$redirect\">", '</a>') . '<br /><br />' .  sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');

REPLACE WITH
----------------
			if ( defined('MPHPBB2') )
			{
				$message = $lang['Error_login'] . "\n";
				if ( MPHPBB2 != 'smart' )
				{
					$message .= '</li>' . "\n";
					$message .= '<li>' . "\n";
					$message .= '<div>' . "\n";
					$message .= '<a href="' . "login.$phpEx?redirect=$redirect" . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_login'], '', '') . '</a>' . "\n";
					$message .= '<a href="' . append_sid("index.$phpEx") . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
					$message .= '</div>' . "\n";
				}
				else
				{
					$message .= '<a href="' . "login.$phpEx?redirect=$redirect" . '">' . sprintf($lang['Click_return_login'], '', '') . '</a>' . "\n";
					$message .= '<br />' . "\n";
					$message .= '<a href="' . append_sid("index.$phpEx") . '">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
				}
			}
			else
			{
				$message = $lang['Error_login'] . '<br /><br />' . sprintf($lang['Click_return_login'], "<a href=\"login.$phpEx?redirect=$redirect\">", '</a>') . '<br /><br />' .  sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
			}

step 9:
================
OPEN
----------------
posting.php

FIND
----------------
if ( ( $delete || $poll_delete || $mode == 'delete' ) && !$confirm )

ADD BEFORE
----------------
if ( defined('MPHPBB2') )
{
	if ( !empty($HTTP_POST_VARS['subject']) )
	{
		$HTTP_POST_VARS['subject'] = utf8_decode($HTTP_POST_VARS['subject']);
	}
	if ( !empty($HTTP_POST_VARS['message']) )
	{
		$HTTP_POST_VARS['message'] = utf8_decode($HTTP_POST_VARS['message']);
	}
}

If your forum uses other language than default character set(ISO-8859-1), you should replace
		$HTTP_POST_VARS['subject'] = utf8_decode($HTTP_POST_VARS['subject']);
with
		$HTTP_POST_VARS['subject'] = mb_convert_encoding($HTTP_POST_VARS['subject'], TO_ENCODING, 'UTF-8');

and replace
		$HTTP_POST_VARS['message'] = utf8_decode($HTTP_POST_VARS['message']);
with
		$HTTP_POST_VARS['message'] = mb_convert_encoding($HTTP_POST_VARS['message'], TO_ENCODING, 'UTF-8');

The "TO_ENCODING" is corresponding to your charactor set, please refer to "http://www.php.net/manual/en/mbstring.supported-encodings.php" to find the right value for above function.

If "mb_convert_encoding()" function is not exist in your system -- you will get a "undefined" when new topic/post reply/new private message, replace it with "iconv()" function.  If "iconv()" is also not exist in your system, you should either ask your web hosting company to install "mb_convert_encoding()" and/or "iconv()", or find a conversion script from Internet which can convert UTF-8 text to your character set, and install it by yourself.

For example, if your forum uses Hebrew (Windows-1255 or ISO-8859-8), you should replace
		$HTTP_POST_VARS['subject'] = utf8_decode($HTTP_POST_VARS['subject']);
with
		$HTTP_POST_VARS['subject'] = mb_convert_encoding($HTTP_POST_VARS['subject'], 'ISO-8859-8', 'UTF-8');
or
		$HTTP_POST_VARS['subject'] = iconv('UTF-8', 'ISO-8859-8', $HTTP_POST_VARS['subject']);

For detail "mb_convert_encoding()" usage, please refer to: "http://php.net/manual/en/function.mb-convert-encoding.php".
For "iconv()", refer to: "http://www.php.net/manual/en/function.iconv.php".
For encoding character set, refer to: "http://www.php.net/manual/en/mbstring.supported-encodings.php".

step 10:
================
OPEN
----------------
privmsg.php

FIND
----------------
$inbox_url = ( $folder != 'inbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">' . $lang['Inbox'] . '</a>' : $lang['Inbox'];

REPLACE WITH
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		$inbox_url = ( $folder != 'inbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">' . $lang['Inbox'] . '</a>' : '<a href="">' . $lang['Inbox'] . '</a>';
	}
	else
	{
		$inbox_url = ( $folder != 'inbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '" rel="external" class="ui-btn-active">' . $lang['Inbox'] . '</a>' : '<a href="" rel="external">' . $lang['Inbox'] . '</a>';
	}
}
else
{
	$inbox_url = ( $folder != 'inbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">' . $lang['Inbox'] . '</a>' : $lang['Inbox'];
}

FIND
----------------
$outbox_url = ( $folder != 'outbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=outbox") . '">' . $lang['Outbox'] . '</a>' : $lang['Outbox'];

REPLACE WITH
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		$outbox_url = ( $folder != 'outbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=outbox") . '">' . $lang['Outbox'] . '</a>' : '<a href="">' . $lang['Outbox'] . '</a>';
	}
	else
	{
		$outbox_url = ( $folder != 'outbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=outbox") . '" rel="external" class="ui-btn-active">' . $lang['Outbox'] . '</a>' : '<a href="" rel="external">' . $lang['Outbox'] . '</a>';
	}
}
else
{
	$outbox_url = ( $folder != 'outbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=outbox") . '">' . $lang['Outbox'] . '</a>' : $lang['Outbox'];
}

FIND
----------------
$sentbox_url = ( $folder != 'sentbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=sentbox") . '">' . $lang['Sentbox'] . '</a>' : $lang['Sentbox'];

REPLACE WITH
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		$sentbox_url = ( $folder != 'sentbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=sentbox") . '">' . $lang['Sentbox'] . '</a>' : '<a href="">' . $lang['Sentbox'] . '</a>';
	}
	else
	{
		$sentbox_url = ( $folder != 'sentbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=sentbox") . '" rel="external" class="ui-btn-active">' . $lang['Sentbox'] . '</a>' : '<a href="" rel="external">' . $lang['Sentbox'] . '</a>';
	}
}
else
{
	$sentbox_url = ( $folder != 'sentbox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=sentbox") . '">' . $lang['Sentbox'] . '</a>' : $lang['Sentbox'];
}

FIND
----------------
$savebox_url = ( $folder != 'savebox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=savebox") . '">' . $lang['Savebox'] . '</a>' : $lang['Savebox'];

REPLACE WITH
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		$savebox_url = ( $folder != 'savebox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=savebox") . '">' . $lang['Savebox'] . '</a>' : '<a href="">' . $lang['Savebox'] . '</a>';
	}
	else
	{
		$savebox_url = ( $folder != 'savebox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=savebox") . '" rel="external" class="ui-btn-active">' . $lang['Savebox'] . '</a>' : '<a href="" rel="external">' . $lang['Savebox'] . '</a>';
	}
}
else
{
	$savebox_url = ( $folder != 'savebox' || $mode != '' ) ? '<a href="' . append_sid("privmsg.$phpEx?folder=savebox") . '">' . $lang['Savebox'] . '</a>' : $lang['Savebox'];
}

FIND
----------------
	$post_icons = array(
		'post_img' => '<a href="' . $post_urls['post'] . '"><img src="' . $images['pm_postmsg'] . '" alt="' . $lang['Post_new_pm'] . '" border="0" /></a>',
		'post' => '<a href="' . $post_urls['post'] . '">' . $lang['Post_new_pm'] . '</a>',
		'reply_img' => '<a href="' . $post_urls['reply'] . '"><img src="' . $images['pm_replymsg'] . '" alt="' . $lang['Post_reply_pm'] . '" border="0" /></a>',
		'reply' => '<a href="' . $post_urls['reply'] . '">' . $lang['Post_reply_pm'] . '</a>',
		'quote_img' => '<a href="' . $post_urls['quote'] . '"><img src="' . $images['pm_quotemsg'] . '" alt="' . $lang['Post_quote_pm'] . '" border="0" /></a>',
		'quote' => '<a href="' . $post_urls['quote'] . '">' . $lang['Post_quote_pm'] . '</a>',
		'edit_img' => '<a href="' . $post_urls['edit'] . '"><img src="' . $images['pm_editmsg'] . '" alt="' . $lang['Edit_pm'] . '" border="0" /></a>',
		'edit' => '<a href="' . $post_urls['edit'] . '">' . $lang['Edit_pm'] . '</a>'
	);

ADD AFTER
----------------
	if ( defined('MPHPBB2') )
	{
		$post_icons['reply_img'] = '<a href="' . $post_urls['reply'] . '" rel="external" data-role="button" data-inline="true" data-theme="b">' . $lang['Post_reply_pm'] . '</a>';
	}

FIND
----------------
	if ( $submit )

ADD BEFORE
----------------
	if ( defined('MPHPBB2') )
	{
		if ( !empty($HTTP_POST_VARS['subject']) )
		{
			$HTTP_POST_VARS['subject'] = utf8_decode($HTTP_POST_VARS['subject']);
		}
		if ( !empty($HTTP_POST_VARS['message']) )
		{
			$HTTP_POST_VARS['message'] = utf8_decode($HTTP_POST_VARS['message']);
		}
	}

If your forum uses other language than default character set(ISO-8859-1), please refer to "posting.php" installation procedure to updating the "utf8_decode()" function.

FIND
----------------
		$msg = $lang['Message_sent'] . '<br /><br />' . sprintf($lang['Click_return_inbox'], '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">', '</a> ') . '<br /><br />' . sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');

REPLACE WITH
----------------
		if ( defined('MPHPBB2') )
		{
			$msg = $lang['Message_sent'] . "\n";
			if ( MPHPBB2 != 'smart' )
			{
				$msg .= '</li>' . "\n";
				$msg .= '<li>' . "\n";
				$msg .= '<div>' . "\n";
				$msg .= '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_inbox'], '', '') . '</a>' . "\n";
				$msg .= '<a href="' . append_sid("index.$phpEx") . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
				$msg .= '</div>' . "\n";
			}
			else
			{
				$msg .= '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">' . sprintf($lang['Click_return_inbox'], '', '') . '</a>' . "\n";
				$msg .= '<br />' . "\n";
				$msg .= '<a href="' . append_sid("index.$phpEx") . '">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
			}
		}
		else
		{
			$msg = $lang['Message_sent'] . '<br /><br />' . sprintf($lang['Click_return_inbox'], '<a href="' . append_sid("privmsg.$phpEx?folder=inbox") . '">', '</a> ') . '<br /><br />' . sprintf($lang['Click_return_index'], '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
		}

FIND
----------------
$post_pm_img = '<a href="' . $post_pm . '"><img src="' . $images['pm_postmsg'] . '" alt="' . $lang['Post_new_pm'] . '" border="0" /></a>';

REPLACE WITH
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		$post_pm_img = '<a href="' . $post_pm . '">' . $lang['Post_new_pm'] . '</a>';
	}
	else
	{
		$post_pm_img = '<a href="' . $post_pm . '" rel="external" data-role="button" data-inline="true" data-theme="b">' . $lang['Post_new_pm'] . '</a>';
	}
}
else
{
	$post_pm_img = '<a href="' . $post_pm . '"><img src="' . $images['pm_postmsg'] . '" alt="' . $lang['Post_new_pm'] . '" border="0" /></a>';
}

step 11:
================
OPEN
----------------
viewforum.php

FIND
----------------
		$topic_author = ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? '<a href="' . append_sid("profile.$phpEx?mode=viewprofile&amp;" . POST_USERS_URL . '=' . $topic_rowset[$i]['user_id']) . '">' : '';
		$topic_author .= ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? $topic_rowset[$i]['username'] : ( ( $topic_rowset[$i]['post_username'] != '' ) ? $topic_rowset[$i]['post_username'] : $lang['Guest'] );

		$topic_author .= ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? '</a>' : '';

REPLACE WITH
----------------
		if ( defined('MPHPBB2') )
		{
			$topic_author = ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? $topic_rowset[$i]['username'] : ( ( $topic_rowset[$i]['post_username'] != '' ) ? $topic_rowset[$i]['post_username'] : $lang['Guest'] );
		}
		else
		{
			$topic_author = ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? '<a href="' . append_sid("profile.$phpEx?mode=viewprofile&amp;" . POST_USERS_URL . '=' . $topic_rowset[$i]['user_id']) . '">' : '';
			$topic_author .= ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? $topic_rowset[$i]['username'] : ( ( $topic_rowset[$i]['post_username'] != '' ) ? $topic_rowset[$i]['post_username'] : $lang['Guest'] );

			$topic_author .= ( $topic_rowset[$i]['user_id'] != ANONYMOUS ) ? '</a>' : '';
		}

FIND
----------------
		$last_post_url = '<a href="' . append_sid("viewtopic.$phpEx?"  . POST_POST_URL . '=' . $topic_rowset[$i]['topic_last_post_id']) . '#' . $topic_rowset[$i]['topic_last_post_id'] . '"><img src="' . $images['icon_latest_reply'] . '" alt="' . $lang['View_latest_post'] . '" title="' . $lang['View_latest_post'] . '" border="0" /></a>';

REPLACE WITH
----------------
		if ( defined('MPHPBB2') )
		{
			$last_post_url = '<a href="' . append_sid("viewtopic.$phpEx?"  . POST_POST_URL . '=' . $topic_rowset[$i]['topic_last_post_id']) . '">' . $lang['View_latest_post'] . '</a>';
		}
		else
		{
			$last_post_url = '<a href="' . append_sid("viewtopic.$phpEx?"  . POST_POST_URL . '=' . $topic_rowset[$i]['topic_last_post_id']) . '#' . $topic_rowset[$i]['topic_last_post_id'] . '"><img src="' . $images['icon_latest_reply'] . '" alt="' . $lang['View_latest_post'] . '" title="' . $lang['View_latest_post'] . '" border="0" /></a>';
		}

step 12:
================
OPEN
----------------
includes/functions.php

FIND
----------------
	$template = new Template($phpbb_root_path . $template_path . $template_name);

ADD BEFORE
----------------
	if ( !defined('IN_ADMIN') )
	{
		define('FLX', true);
		include($phpbb_root_path . 'mobile/lib/detection.php');
		$m_detection = new MobileDetection();
		list($device_platform, $device_grade, $device_system, $echo_page, $set_cookie) = $m_detection->get_redirection();
		if ( $set_cookie == 'mobile' )
		{
			setcookie('flx-redirection', 'mobile', time()+31536000);
		}
		else if ( $set_cookie == 'desktop' )
		{
			setcookie('flx-redirection', 'desktop', time()+31536000);
		}
		if ( $echo_page == 'mobile' )
		{
			if ( $device_system == 'touch-phone' )
			{
				define('MPHPBB2', 'touch');
				$template_name = "subSilver_touch";
			}
			else if ( $device_system == 'tablet' )
			{
				define('MPHPBB2', 'tablet');
				$template_name = "subSilver_tablet";
			}
			else
			{
				define('MPHPBB2', 'smart');
				$template_name = "subSilver_smart";
			}
		}
	}

FIND
----------------
	if ( $total_pages > 10 )

ADD BEFORE
----------------
	if ( defined('MPHPBB2') )
	{
		$page_string .= '</div>' . "\n";
		$page_string .= '<div data-role="footer" data-id="foo1" data-position="fixed">' . "\n";

		$page_string .= '<div data-role="navbar">' . "\n";
		$page_string .= '<ul>' . "\n";

		if ( $on_page > 1 )
		{
			if ( $total_pages > 3 )
			{
				if ( MPHPBB2 != 'smart' )
				{
					$page_string .= '<li>' . "\n";
					$page_string .= '<a href="' . append_sid($base_url) . '" rel="external" class="ui-btn-active">' . $lang['First'] . '</a>' . "\n";
					$page_string .= '</li>' . "\n";
				}
				else
				{
					$page_string .= '<a href="' . append_sid($base_url) . '">' . $lang['First'] . '</a>' . "\n";
				}
			}

			if ( MPHPBB2 != 'smart' )
			{
				$page_string .= '<li>' . "\n";
				$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( ($on_page - 2) * $per_page )) . '" rel="external" class="ui-btn-active">' . $lang['Previous'] . '</a>' . "\n";
				$page_string .= '</li>' . "\n";
			}
			else
			{
				$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( ($on_page - 2) * $per_page )) . '">' . $lang['Previous'] . '</a>' . "\n";
			}
		}

		if ( $on_page < $total_pages )
		{
			if ( MPHPBB2 != 'smart' )
			{
				$page_string .= '<li>' . "\n";
				$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( $on_page * $per_page )) . '" rel="external" class="ui-btn-active">' . $lang['Next'] . '</a>' . "\n";
				$page_string .= '</li>' . "\n";
			}
			else
			{
				$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( $on_page * $per_page )) . '">' . $lang['Next'] . '</a>' . "\n";
			}

			if ( $total_pages > 3 )
			{
				if ( MPHPBB2 != 'smart' )
				{
					$page_string .= '<li>' . "\n";
					$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( ($total_pages - 1) * $per_page )) . '" rel="external" class="ui-btn-active">' . $lang['Last'] . '</a>' . "\n";
					$page_string .= '</li>' . "\n";
				}
				else
				{
					$page_string .= '<a href="' . append_sid($base_url . "&amp;start=" . ( ($total_pages - 1) * $per_page )) . '">' . $lang['Last'] . '</a>' . "\n";
				}
			}
		}

		$page_string .= '</ul>' . "\n";
		$page_string .= '</div>';

		return $page_string;
	}

step 13:
================
OPEN
----------------
includes/functions_post.php

FIND
----------------
	$meta = '<meta http-equiv="refresh" content="3;url=' . append_sid("viewtopic.$phpEx?" . POST_POST_URL . "=" . $post_id) . '#' . $post_id . '">';

ADD BEFORE
----------------
	if ( defined('MPHPBB2') )
	{
		$meta = '<meta http-equiv="refresh" content="3;url=' . append_sid("viewtopic.$phpEx?" . POST_POST_URL . "=" . $post_id) . '">';

		$message = $lang['Stored'] . "\n";
		if ( MPHPBB2 != 'smart' )
		{
			$message .= '</li>' . "\n";
			$message .= '<li>' . "\n";
			$message .= '<div>' . "\n";
			$message .= '<a href="' . append_sid("viewtopic.$phpEx?" . POST_POST_URL . "=" . $post_id) . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_view_message'], '', '') . '</a>' . "\n";
			$message .= '<a href="' . append_sid("viewforum.$phpEx?" . POST_FORUM_URL . "=" . $forum_id) . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_forum'], '', '') . '</a>' . "\n";
			$message .= '</div>' . "\n";
		}
		else
		{
			$message .= '<a href="' . append_sid("viewtopic.$phpEx?" . POST_POST_URL . "=" . $post_id) . '">' . sprintf($lang['Click_view_message'], '', '') . '</a>' . "\n";
			$message .= '<br />' . "\n";
			$message .= '<a href="' . append_sid("viewforum.$phpEx?" . POST_FORUM_URL . "=" . $forum_id) . '">' . sprintf($lang['Click_return_forum'], '', '') . '</a>' . "\n";
		}

		return false;
	}

step 14:
================
OPEN
----------------
includes/page_header.php

FIND
----------------
$template->set_filenames(array(
	'overall_header' => ( empty($gen_simple_header) ) ? 'overall_header.tpl' : 'simple_header.tpl')
);

REPLACE WITH
----------------
if ( defined('MPHPBB2') && MPHPBB2 != 'tablet' && isset($HTTP_GET_VARS['flx-mode']) && $HTTP_GET_VARS['flx-mode'] == 'option' )
{
	$template->set_filenames(array(
		'overall_header' => 'options_header.tpl')
	);
}
else
{
	$template->set_filenames(array(
		'overall_header' => ( empty($gen_simple_header) ) ? 'overall_header.tpl' : 'simple_header.tpl')
	);
}

FIND
----------------
$template->assign_vars(array(
	'SITENAME' => $board_config['sitename'],
	'SITE_DESCRIPTION' => $board_config['site_desc'],
	'PAGE_TITLE' => $page_title,
	'LAST_VISIT_DATE' => sprintf($lang['You_last_visit'], $s_last_visit),
	'CURRENT_TIME' => sprintf($lang['Current_time'], create_date($board_config['default_dateformat'], time(), $board_config['board_timezone'])),
	'TOTAL_USERS_ONLINE' => $l_online_users,
	'LOGGED_IN_USER_LIST' => $online_userlist,
	'RECORD_USERS' => sprintf($lang['Record_online_users'], $board_config['record_online_users'], create_date($board_config['default_dateformat'], $board_config['record_online_date'], $board_config['board_timezone'])),
	'PRIVATE_MESSAGE_INFO' => $l_privmsgs_text,
	'PRIVATE_MESSAGE_INFO_UNREAD' => $l_privmsgs_text_unread,
	'PRIVATE_MESSAGE_NEW_FLAG' => $s_privmsg_new,

	'PRIVMSG_IMG' => $icon_pm,

	'L_USERNAME' => $lang['Username'],
	'L_PASSWORD' => $lang['Password'],
	'L_LOGIN_LOGOUT' => $l_login_logout,
	'L_LOGIN' => $lang['Login'],
	'L_LOG_ME_IN' => $lang['Log_me_in'],
	'L_AUTO_LOGIN' => $lang['Log_me_in'],
	'L_INDEX' => sprintf($lang['Forum_Index'], $board_config['sitename']),
	'L_REGISTER' => $lang['Register'],
	'L_PROFILE' => $lang['Profile'],
	'L_SEARCH' => $lang['Search'],
	'L_PRIVATEMSGS' => $lang['Private_Messages'],
	'L_WHO_IS_ONLINE' => $lang['Who_is_Online'],
	'L_MEMBERLIST' => $lang['Memberlist'],
	'L_FAQ' => $lang['FAQ'],
	'L_USERGROUPS' => $lang['Usergroups'],
	'L_SEARCH_NEW' => $lang['Search_new'],
	'L_SEARCH_UNANSWERED' => $lang['Search_unanswered'],
	'L_SEARCH_SELF' => $lang['Search_your_posts'],
	'L_WHOSONLINE_ADMIN' => sprintf($lang['Admin_online_color'], '<span style="color:#' . $theme['fontcolor3'] . '">', '</span>'),
	'L_WHOSONLINE_MOD' => sprintf($lang['Mod_online_color'], '<span style="color:#' . $theme['fontcolor2'] . '">', '</span>'),

	'U_SEARCH_UNANSWERED' => append_sid('search.'.$phpEx.'?search_id=unanswered'),
	'U_SEARCH_SELF' => append_sid('search.'.$phpEx.'?search_id=egosearch'),
	'U_SEARCH_NEW' => append_sid('search.'.$phpEx.'?search_id=newposts'),
	'U_INDEX' => append_sid('index.'.$phpEx),
	'U_REGISTER' => append_sid('profile.'.$phpEx.'?mode=register'),
	'U_PROFILE' => append_sid('profile.'.$phpEx.'?mode=editprofile'),
	'U_PRIVATEMSGS' => append_sid('privmsg.'.$phpEx.'?folder=inbox'),
	'U_PRIVATEMSGS_POPUP' => append_sid('privmsg.'.$phpEx.'?mode=newpm'),
	'U_SEARCH' => append_sid('search.'.$phpEx),
	'U_MEMBERLIST' => append_sid('memberlist.'.$phpEx),
	'U_MODCP' => append_sid('modcp.'.$phpEx),
	'U_FAQ' => append_sid('faq.'.$phpEx),
	'U_VIEWONLINE' => append_sid('viewonline.'.$phpEx),
	'U_LOGIN_LOGOUT' => append_sid($u_login_logout),
	'U_GROUP_CP' => append_sid('groupcp.'.$phpEx),

	'S_CONTENT_DIRECTION' => $lang['DIRECTION'],
	'S_CONTENT_ENCODING' => $lang['ENCODING'],
	'S_CONTENT_DIR_LEFT' => $lang['LEFT'],
	'S_CONTENT_DIR_RIGHT' => $lang['RIGHT'],
	'S_TIMEZONE' => sprintf($lang['All_times'], $l_timezone),
	'S_LOGIN_ACTION' => append_sid('login.'.$phpEx),

	'T_HEAD_STYLESHEET' => $theme['head_stylesheet'],
	'T_BODY_BACKGROUND' => $theme['body_background'],
	'T_BODY_BGCOLOR' => '#'.$theme['body_bgcolor'],
	'T_BODY_TEXT' => '#'.$theme['body_text'],
	'T_BODY_LINK' => '#'.$theme['body_link'],
	'T_BODY_VLINK' => '#'.$theme['body_vlink'],
	'T_BODY_ALINK' => '#'.$theme['body_alink'],
	'T_BODY_HLINK' => '#'.$theme['body_hlink'],
	'T_TR_COLOR1' => '#'.$theme['tr_color1'],
	'T_TR_COLOR2' => '#'.$theme['tr_color2'],
	'T_TR_COLOR3' => '#'.$theme['tr_color3'],
	'T_TR_CLASS1' => $theme['tr_class1'],
	'T_TR_CLASS2' => $theme['tr_class2'],
	'T_TR_CLASS3' => $theme['tr_class3'],
	'T_TH_COLOR1' => '#'.$theme['th_color1'],
	'T_TH_COLOR2' => '#'.$theme['th_color2'],
	'T_TH_COLOR3' => '#'.$theme['th_color3'],
	'T_TH_CLASS1' => $theme['th_class1'],
	'T_TH_CLASS2' => $theme['th_class2'],
	'T_TH_CLASS3' => $theme['th_class3'],
	'T_TD_COLOR1' => '#'.$theme['td_color1'],
	'T_TD_COLOR2' => '#'.$theme['td_color2'],
	'T_TD_COLOR3' => '#'.$theme['td_color3'],
	'T_TD_CLASS1' => $theme['td_class1'],
	'T_TD_CLASS2' => $theme['td_class2'],
	'T_TD_CLASS3' => $theme['td_class3'],
	'T_FONTFACE1' => $theme['fontface1'],
	'T_FONTFACE2' => $theme['fontface2'],
	'T_FONTFACE3' => $theme['fontface3'],
	'T_FONTSIZE1' => $theme['fontsize1'],
	'T_FONTSIZE2' => $theme['fontsize2'],
	'T_FONTSIZE3' => $theme['fontsize3'],
	'T_FONTCOLOR1' => '#'.$theme['fontcolor1'],
	'T_FONTCOLOR2' => '#'.$theme['fontcolor2'],
	'T_FONTCOLOR3' => '#'.$theme['fontcolor3'],
	'T_SPAN_CLASS1' => $theme['span_class1'],
	'T_SPAN_CLASS2' => $theme['span_class2'],
	'T_SPAN_CLASS3' => $theme['span_class3'],

	'NAV_LINKS' => $nav_links_html)
);

ADD AFTER
----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'tablet' )
	{
		$template->assign_vars(array(
			'L_OPTIONS' => $lang['Options'],
			'L_SWITCH_TO_DESKTOP_STYLE' => $lang['Switch_to_desktop_style'],
			'U_SWITCH_TO_DESKTOP_STYLE' => append_sid('index.'.$phpEx.'?flx-redirection=desktop'))
		);
	}
	else
	{
		if ( isset($HTTP_GET_VARS['flx-mode']) && $HTTP_GET_VARS['flx-mode'] == 'option' )
		{
			$template->assign_vars(array(
				'L_SWITCH_TO_DESKTOP_STYLE' => $lang['Switch_to_desktop_style'],
				'U_SWITCH_TO_DESKTOP_STYLE' => append_sid('index.'.$phpEx.'?flx-redirection=desktop'))
			);
		}
		else
		{
			$template->assign_vars(array(
				'L_OPTIONS' => $lang['Options'],
				'U_OPTIONS' => append_sid('index.'.$phpEx.'?flx-mode=option'))
			);
		}
	}
}

FIND
----------------
if (!empty($HTTP_SERVER_VARS['SERVER_SOFTWARE']) && strstr($HTTP_SERVER_VARS['SERVER_SOFTWARE'], 'Apache/2'))
{
	header ('Cache-Control: no-cache, pre-check=0, post-check=0');
}
else
{
	header ('Cache-Control: private, pre-check=0, post-check=0, max-age=0');
}
header ('Expires: 0');
header ('Pragma: no-cache');

REPLACE WITH
-----------------
if ( defined('MPHPBB2') )
{
	if ( MPHPBB2 == 'smart' )
	{
		header('Cache-Control: no-transform');
		header('Content-Type: application/xhtml+xml');
		echo '<?xml version="1.0" encoding="UTF-8" ?>' . "\n";
	}
	else
	{
		header('Cache-Control: private, no-cache="set-cookie');
		header('Expires: 0');
		header('Pragma: no-cache');
	}
}
else
{
	if (!empty($HTTP_SERVER_VARS['SERVER_SOFTWARE']) && strstr($HTTP_SERVER_VARS['SERVER_SOFTWARE'], 'Apache/2'))
	{
		header ('Cache-Control: no-cache, pre-check=0, post-check=0');
	}
	else
	{
		header ('Cache-Control: private, pre-check=0, post-check=0, max-age=0');
	}
	header ('Expires: 0');
	header ('Pragma: no-cache');
}

step 15:
================
OPEN
----------------
includes/usercp_register.php

FIND
----------------
			$message = $message . '<br /><br />' . sprintf($lang['Click_return_index'],  '<a href="' . append_sid("index.$phpEx") . '">', '</a>');

REPLACE WITH
----------------
			if ( defined('MPHPBB2') )
			{
				$message .= "\n";
				if ( MPHPBB2 != 'smart' )
				{
					$message .= '</li>' . "\n";
					$message .= '<li>' . "\n";
					$message .= '<div>' . "\n";
					$message .= '<a href="' . append_sid("index.$phpEx") . '" rel="external" data-role="button" data-theme="a">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
					$message .= '</div>' . "\n";
				}
				else
				{
					$message .= '<a href="' . append_sid("index.$phpEx") . '">' . sprintf($lang['Click_return_index'], '', '') . '</a>' . "\n";
				}
			}
			else
			{
				$message = $message . '<br /><br />' . sprintf($lang['Click_return_index'],  '<a href="' . append_sid("index.$phpEx") . '">', '</a>');
			}

step 16:
================
OPEN
----------------
language/lang_main.php

FIND
----------------
//
// That's all, Folks!
// -------------------------------------------------

ADD AFTER
----------------
$lang['First'] = 'First';

$lang['Last'] = 'Last';

$lang['Switch_to_desktop_style'] = 'Switch to desktop style';

If your forum uses other language than English, please also update your language file.

step 17:
================
Skip this step if your language is Left To Right(LTR).  Otherwise, if your language is Right To Left(RTL), please do following updating:

OPEN
----------------
templates/subSilver_tablet/overall_header.tpl

FIND
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />

REPLACE WITH
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.rtl.min.css" />

OPEN
----------------
templates/subSilver_touch/overall_header.tpl

FIND
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />

REPLACE WITH
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.rtl.min.css" />

The file name, for example "jquery.mobile-1.1.1.rtl.min.css", may be different since jQuery Mobile theme may be updated.  What you should do is adding ".rtl" just before ".min.css".

step 18:
================
Skip this step if your language is Left To Right(LTR).  Otherwise, if your language is Right To Left(RTL), please do following updating:

OPEN
----------------
templates/subSilver_touch/options_header.tpl

FIND
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.min.css" />

REPLACE WITH
----------------
<link rel="stylesheet" href="themes/jquery/mobile/1.1.1/jquery.mobile-1.1.1.rtl.min.css" />

The file name, for example "jquery.mobile-1.1.1.rtl.min.css", may be different since jQuery Mobile theme may be updated.  What you should do is adding ".rtl" just before ".min.css".

step 19:
================
Set up a sub-domain, such as: "http://m.yoursite.com/", which redirect to "http://yoursite.com/?flx-redirection=mobile".

step 20:
================
End users can now get mobile friendly style of your phpBB2 from their mobile web browsers by the URL of "http://m.yoursite.com/".


Configuration
++++++++++++++++
Personalize Page Header and Footer
================
Personalize the content of mobile template files to personalize page header and footer.


Frequent Ask Question
++++++++++++++++
General
================
Q: Do you have any suggestion before I install this module?
A: I suggest you setup an empty phpBB 2 forum, install my module on this empty forum and do testing there before on your real forum.
A: I suggest you setup an empty phpBB 3 forum, install my module on this empty forum and do testing there before on your real forum.

Trouble Shooting
================
Q: I get a "Template->make_filename(): Error - file blahblah.tpl does not exist." error, what should I do?
A: This happens when you install some add-on module, which includes special template (file), that is not in classical phpBB2 package, so my module can not support this template (file). I suggest you find this missing template file from your current system, copy it to following directories:
 -- http://yoursite.com/templates/subSilver_smart/
 -- http://yoursite.com/templates/subSilver_tablet/
 -- http://yoursite.com/templates/subSilver_touch/
and update this file according to jQuery Mobile theme: "http://jquerymobile.com/" -- make this template (file) mobile friendly.

Q: I get a "undefined" error, what should I do?
A: This is caused by some PHP function in my code is not supported in your environment. Please let me know your web site URL and the page you get this error. I will try to find a workaround.

Q: I get an "Error Loading Page" message, what should I do?
A: This is a known issue in jQuery Mobile: "http://forum.jquery.com/jquery-mobile/search/Error%20Loading%20Page". My module uses is based on this theme. I am sorry we have to wait until jQuery solves it. It often happens when the data connection is slow. I suggest you do refreshing to reload the page in this situation.

Q: How to switch to "classic" phpBB2 style?
A: Click the "Options" button on top left corner of each mobile style page, then select "Switch to desktop style".

Misc.
================
Q: How can I test mobile web sites from my desktop web browser?
A: From Chrome, you can use this solution: "http://googlesystem.blogspot.com/2011/12/changing-user-agent-new-google-chrome.html". For FireFox, refer to this one: "http://mobiforge.com/testing/story/testing-mobile-web-sites-using-firefox".
If you have more recommendation, please let me know. I will share your tips here, so more people can use them.


History
++++++++++++++++
Bali Release, Load 2.0 (Fri., Oct. 03, 2014)
-- open the source

Bali Release, Load 1.0 (Sat., Mar. 02, 2013)
-- new feature: tablet theme
-- new feature: smart-phone theme

Aruba Release, Load 2.1 (Thur., Nov. 29, 2012)
-- new feature: detect Google, Mircosoft and Yahoo! bots

Aruba Release, Load 2.0 (Fri., Nov. 23, 2012)
-- improvement: update Mobile Detection database

Aruba Release, Load 1.7 (Mon., Jun. 04, 2012)
-- improvement: phpBB2 style improvement

Aruba Release, Load 1.6 (Fri., Jun. 01, 2012)
-- bug fix: convert UTF-8 into ISO-8859-1 in new topic/post reply/new private message continue

Aruba Release, Load 1.5 (Tue., May 22, 2012)
-- bug fix: UTF-8 encoding new topic/post reply issue continue

Aruba Release, Load 1.4 (Mon., May 14, 2012)
-- bug fix: UTF-8 encoding new topic/post reply issue

Aruba Release, Load 1.3 (Wed., May 09, 2012)
-- new feature: desktop/mobile redirection

Aruba Release, Load 1.2 (Sun., Apr. 22, 2012)
-- PHP4 compatible

Aruba Release, Load 1.1 (Wed., Apr. 04, 2012)
-- readme file installation section improvement.

Aruba Release, Load 1.0 (Tue., Apr. 03, 2012)
-- primary development


To Do List
++++++++++++++++
-- Convert more pages into mobile-friendly ones.


Support
++++++++++++++++
author: Rickey Gu
web: http://flexplat.com
email: rickey29@gmail.com


Copyright and Disclaimer
++++++++++++++++
This application is open-source software released under the GNU General Public License v2: http://opensource.org/licenses/gpl-2.0.php .
