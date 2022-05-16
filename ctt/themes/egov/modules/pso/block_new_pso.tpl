<!-- BEGIN: main -->
<div class="panel panel-primary padingpri">
                <div class="panel-heading">
                    {BLOCK_TITLE}
                </div>
</div>
<div class="panel panel-default borderdef">
                <ul class="list-group list-laws" style="margin-bottom:0px">
				<!-- BEGIN: loop -->
                   <li class="list-group-item">
				   <h4 class="law-code" style="margin-bottom:6px" >
			<a <!-- BEGIN: newday -->class="iconnews"<!-- END: newday --> href="{ROW.link}" title="{ROW.title}">{ROW.stitle}</a>
		</h4>
		<!-- BEGIN: code -->
		<em class="text-muted law-view">Lượt xem:{ROW.view_hits} | {LANG.download_hits}:{ROW.download_hits}</em>
		<!-- END: code -->
				   </li>
				<!-- END: loop -->
                </ul>
</div>
<!-- END: main -->