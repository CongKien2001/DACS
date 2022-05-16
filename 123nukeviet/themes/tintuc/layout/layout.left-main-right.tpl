<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}


      <div class="ta_main">
         <table width="100%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
              
               <td width="182" valign="top" align="left">
                [LEFT]
               </td>     
               <td valign="top" class="content_box" >
                    [TOP]
                     {MODULE_CONTENT}
                     [BOTTOM]
               </td>
               <td width="182" valign="top"  align="left">
                [RIGHT]
               </td>
           </tr>
         </table>
      </div>
     
      

{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->