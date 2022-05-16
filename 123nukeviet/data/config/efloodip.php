<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2019 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Tue, 12 Mar 2019 14:31:54 GMT
 */

if (!defined('NV_MAINFILE'))
    die('Stop!!!');

$array_except_flood_site = array();
$array_except_flood_site['::1'] = array('mask' => "//", 'begintime' => 1552401114, 'endtime' => 0);

$array_except_flood_admin = array();
