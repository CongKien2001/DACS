<!-- BEGIN: main -->
<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
        <colgroup>
            <col width="50" />
            <col />
            <col width="70" />
            <col width="150" />
            <!-- BEGIN: down_in_home_col --><col width="80" /><!-- END: down_in_home_col -->
        </colgroup>
        <thead>
            <tr>
                <th class="text-center">{LANG.stt}</th>
				<th class="text-center">{LANG.title}</th>
                <th class="text-center">{LANG.code}</th>
                <th class="text-center">{LANG.scontent}</th>
                <!-- BEGIN: down_in_home -->
                <th>{LANG.files}</th>
                <!-- END: down_in_home -->
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: loop -->
            <tr>
                <td class="text-center">{ROW.stt}</td>
				<td><a href="{ROW.url}" title="{ROW.title}">{ROW.title}</a></td>
                <td class="text-center"><a href="{ROW.url}" title="{ROW.title}">{ROW.code}</a></td>
                <td>{ROW.signer}</td>
                <!-- BEGIN: down_in_home -->
                <td>
                    <!-- BEGIN: files -->
                    <ul class="text-center" style="padding: 0;">
                        <!-- BEGIN: loopfile -->
                        <li style="display: inline-block"><a href="{FILE.url}" title="{FILE.title}"><button name="color" type="button" class="btn btn-default center-block"  value="btn-primary"><em class="fa fa-download"></em></button></a></li>
                        <!-- END: loopfile -->
                    </ul>
                    <!-- END: files -->
                </td>
                <!-- END: down_in_home -->
            </tr>
            <!-- END: loop -->
        </tbody>
    </table>
</div>
<div class="generate_page">
    {generate_page}
</div>
<!-- END: main -->