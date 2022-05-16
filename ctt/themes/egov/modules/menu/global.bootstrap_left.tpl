<!-- BEGIN: main -->
<!-- BEGIN: css -->
<link rel='stylesheet' href='{NV_BASE_SITEURL}themes/{BLOCK_THEME}/css/left-menu.css' type='text/css'>
<!-- END: css -->
<ul class="menu">
    <!-- BEGIN: top_menu -->
    <li class="menu-item">
        <a <!-- BEGIN: has_sub --> class="parent" <!-- END: has_sub --> href="{TOP_MENU.link}" title="{TOP_MENU.note}">{TOP_MENU.title_trim}</a>
        <!-- BEGIN: sub --> {SUB} <!-- END: sub -->
    </li>
    <!-- END: top_menu -->
</ul>
<script type="text/javascript" data-show="after">
    $(function() {
        checkWidthMenu();
        $(window).resize(checkWidthMenu);
    });
</script>
<!-- END: main -->
