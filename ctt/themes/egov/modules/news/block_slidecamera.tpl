<!-- BEGIN: main -->
<!-- BEGIN: camera -->
<link rel='stylesheet' id='camera-css'  href='{NV_BASE_SITEURL}themes/{TEMPLATE}/css/camera.css' type='text/css' media='all'>
<script type='text/javascript' src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/slide_camera/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='{NV_BASE_SITEURL}themes/{TEMPLATE}/js/slide_camera/camera.js'></script>
<!-- END: camera -->
<script>
    jQuery(function(){
        jQuery('#camera_wrap_2').camera({
            pagination: false,
            thumbnails: false
        });
    });
</script>
    <div class="camera_wrap camera_magenta_skin" id="camera_wrap_2">
        <!-- BEGIN: loop -->
        <div data-thumb="{ROW.thumb}" data-src="{ROW.fileimg}">
            <div class="camera_caption fadeFromBottom">
                <h3><a href="{ROW.link}" title="{ROW.title}" {ROW.target_blank}>{ROW.title_clean}</a></h3>
                {ROW.hometext_clean}
            </div>
        </div>
        <!-- END: loop -->
    </div>
    <div class="clearfix" style="margin-bottom:10px"></div>
<!-- END: main -->