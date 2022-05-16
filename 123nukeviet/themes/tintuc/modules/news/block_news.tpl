<!-- BEGIN: main -->
<ul class="block_news">
	<marquee direction="up" scrolldelay="5" scrollamount="2" onmouseover="this.stop()" onmouseout="this.start()">
	<!-- BEGIN: newloop -->
	<li class="clearfix">
		
		<a {TITLE} class="show" href="{blocknews.link}" {blocknews.target_blank} data-content="{blocknews.hometext_clean}" data-img="{blocknews.imgurl}" data-rel="block_news_tooltip"><p ><img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/icons/Huyen-QN_32.png"> &nbsp&nbsp {blocknews.title}</p></a>
	</li>
	<!-- END: newloop -->
</marquee>
</ul>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_news_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->
<!-- END: main -->