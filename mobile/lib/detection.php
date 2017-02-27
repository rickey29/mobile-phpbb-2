<?php
/*
    project: Mobile phpBB2(MphpBB2)
    file:    phpbb2_root_path/mobile/lib/detection.php
    release: Bali
    load:    2.0
    author:  Rickey Gu
    web:     http://flexplat.com
    email:   rickey29@gmail.com
*/

if ( !defined('FLX') )
{
    exit;
}


class MobileDetection
{
    var $device_list = array(
        // Apple iOS
        'iPad' => array(
            'Apple iPad',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        'iPhone' => array(
            'Apple iPhone',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        'iPod' => array(
            'Apple iPod',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        
        // Kindle Fire
        'Kindle Fire' => array(
            'Kindle Fire',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        'Kindle/' => array(
            'Kindle',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        
        // Android
        'Android*Mobile' => array(
            'Android',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        'Android' => array(
            'Android Honeycomb',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        
        // Chrome
        'Chrome/' => array(
            'Chrome',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Macintosh
        'Macintosh' => array(
            'Macintosh',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Firefox
        'Firefox/' => array(
            'Firefox',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Windows Phone
        'Windows Phone' => array(
            'Windows Phone',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        
        // Windows Mobile
        'Windows CE' => array(
            'Windows Mobile',
            'jQuery Mobile C-grade',
            'smartphone'
        ),
        
        // Internet Explorer
        'MSIE ' => array(
            'Internet Explorer',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Opera Mobile
        'Opera Mobi*Version/' => array(
            'Opera Mobile',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        
        // Opera Mini
        'Opera Mini/' => array(
            'Opera Mini',
            'jQuery Mobile B-grade',
            'smartphone'
        ),
        
        // Opera
        'Opera*Version/' => array(
            'Opera',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Palm WebOS
        'webOS/*AppleWebKit' => array(
            'Palm WebOS',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        'TouchPad/' => array(
            'Palm WebOS Pad',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        
        // Meego
        'MeeGo' => array(
            'Meego',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        
        // BlackBerry
        'BlackBerry*AppleWebKit*Version/' => array(
            'BlackBerry Touch-phone',
            'jQuery Mobile A-grade',
            'touch-phone'
        ),
        'PlayBook*AppleWebKit' => array(
            'BlackBerry Playbook',
            'jQuery Mobile A-grade',
            'tablet'
        ),
        'BlackBerry*/*MIDP' => array(
            'BlackBerry Smartphone',
            'jQuery Mobile C-grade',
            'smartphone'
        ),
        
        // Safari
        'Safari' => array(
            'Safari',
            'jQuery Mobile A-grade',
            'desktop'
        ),
        
        // Nokia Symbian
        'Symbian/' => array(
            'Nokia Symbian',
            'jQuery Mobile B-grade',
            'touch-phone'
        ),
        
        
        // Google
        'googlebot-mobile' => array(
            'Google Mobile Bot',
            'jQuery Mobile A-grade',
            'mobile-bot'
        ),
        'googlebot' => array(
            'Google Bot',
            '',
            'bot'
        ),
        
        // Microsoft
        'bingbot' => array(
            'Microsoft Bing',
            '',
            'bot'
        ),
        
        // Yahoo!
        'Yahoo! Slurp' => array(
            'Yahoo! Slurp',
            '',
            'bot'
        )
    );
    
    // application/vnd.wap.xhtml+xml
    var $accept_list = array(
        'application/vnd.wap.xhtml+xml' => array(
            'unrecognized',
            'jQuery Mobile C-grade',
            'feature-phone'
        )
    );
    
    
    function get_detection($user_agent = '', $accept = '', $profile = '')
    {
        if ( empty($user_agent) )
        {
            $user_agent = isset($_SERVER['HTTP_USER_AGENT']) ? $_SERVER['HTTP_USER_AGENT'] : '';
        }
        
        if ( !empty($user_agent) )
        {
            foreach ( $this->device_list as $key => $value )
            {
                if ( preg_match('#' . str_replace('\*', '.*?', preg_quote($key, '#')) . '#i', $user_agent) )
                {
                    return $value;
                }
            }
        }
        
        if ( empty($accept) )
        {
            $accept = isset($_SERVER['HTTP_ACCEPT']) ? $_SERVER['HTTP_ACCEPT'] : '';
        }
        
        if ( !empty($accept) )
        {
            foreach ( $this->accept_list as $key => $value )
            {
                if ( preg_match('#' . str_replace('\*', '.*?', preg_quote($key, '#')) . '#i', $accept) )
                {
                    return $value;
                }
            }
        }
        
        if ( empty($profile) )
        {
            $profile = isset($_SERVER['HTTP_PROFILE']) ? isset($_SERVER['HTTP_PROFILE']) : '';
        }
        
        if ( !empty($profile) )
        {
            return array('unrecognized', 'jQuery Mobile C-grade', 'feature-phone');
        }
        
        if ( empty($user_agent) )
        {
            return array('', '', 'desktop');
        }
        
        return array('unrecognized', 'unrecognized', 'unrecognized');
    }
    
    function get_redirection()
    {
        list($device_platform, $device_grade, $device_system) = $this->get_detection();
        if ( $device_system == 'desktop' || $device_system == 'bot' )
        {
            return array($device_platform, $device_grade, $device_system, 'desktop', '');
        }
        else if ( $device_system == 'mobile-bot' )
        {
            return array($device_platform, $device_grade, $device_system, 'mobile', '');
        }
        
        if ( isset($_GET['flx-redirection']) )
        {
            if ( $_GET['flx-redirection'] == 'mobile' )
            {
                return array($device_platform, $device_grade, $device_system, 'mobile', 'mobile');
            }
            else if ( $_GET['flx-redirection'] == 'desktop' )
            {
                return array($device_platform, $device_grade, $device_system, 'desktop', 'desktop');
            }
        }
        
        if ( isset($_COOKIE['flx-redirection']) )
        {
            if ( $_COOKIE['flx-redirection'] == 'mobile' )
            {
                return array($device_platform, $device_grade, $device_system, 'mobile', 'mobile');
            }
            else if ( $_COOKIE['flx-redirection'] == 'desktop' )
            {
                return array($device_platform, $device_grade, $device_system, 'desktop', 'desktop');
            }
        }
        
        return array($device_platform, $device_grade, $device_system, 'mobile', '');
    }
}
?>
