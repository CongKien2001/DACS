<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 2-10-2010 20:59
 */

if( ! defined( 'NV_ADMIN' ) ) die( 'Stop!!!' );

$db->query( "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_area VALUES
	(1, 0, 'Buu-chinh-1', 'Bưu chính', '', '', 1412265295, 1),
	(2, 0, 'Cong-nghe-vien-thong-2', 'Công nghệ viễn thông', '', '', 1412265295, 2)" );

$db->query( "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_cat VALUES
	(1, 0, 'Vu-CNTT', 'Vụ CNTT', '', '', 5, 1412265295, 1),
	(2, 0, 'Vu-to-chuc-can-bo', 'Vụ tổ chức cán bộ', '', '', 5, 1412265295, 2),
	(3, 0, 'Cuc-thong-tin-doi-ngoai', 'Cục thông tin đối ngoại', '', '', 5, 1412265295, 3),
	(4, 0, 'Cuc-vien-thong', 'Cục viễn thông', '', '', 5, 1412265295, 4),
	(5, 0, 'So-thong-tin-va-truyen-thong', 'Sở thông tin và truyền thông', '', '', 5, 1412998152, 5)" );

$db->query( "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_signer VALUES
	(1, 'Sở Giáo dục và Đào tạo', '', '', 1412265295),
	(2, 'Sở Giao thông Vận tải', '', '', 1412265295),
	(3, 'Sở Công thương', '', '', 1412265295),
	(4, 'Sở Khoa học và Công nghệ', '', '', 1412265295),
	(5, 'Sở Văn hóa và Thể thao', '', '', 1412265295)" );

$db->query( "INSERT INTO " . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "_subject VALUES
	(1, 'Bo-GD-DT', 'Bộ GD&amp;ĐT', '', '', 0, 5, 1412265295, 1),
	(2, 'So-GD-DT', 'Sở GD&amp;ĐT', '', '', 0, 5, 1412265295, 2),
	(3, 'Phong-GD-DT', 'Phòng GD', '', '', 0, 5, 1412265295, 3),
	(4, 'Khac', 'Khác', '', '', 0, 5, 1412265295, 4)" );