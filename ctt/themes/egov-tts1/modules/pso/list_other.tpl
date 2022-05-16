<!-- BEGIN: main -->

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<colgroup>
			<col width="100" />
			<col width="125" />
			<col />
		</colgroup>
		<thead>
            <tr>
                <th class="text-center">{LANG.code}</th>
				<th class="text-center">{LANG.publtime}</th>
                <th class="text-center">{LANG.title}</th>
            </tr>
        </thead>
		<tbody>
			<!-- BEGIN: loop -->
			<tr>
				<td><a href="{ROW.url}" title="{ROW.code}">{ROW.code}</a></td>
				<td>{ROW.publtime}</td>
				<td><a href="{ROW.url}" title="{ROW.introtext}">{ROW.introtext}</a></td>
			</tr>
			<!-- END: loop -->
		</tbody>
	</table>
</div>

<!-- END: main -->