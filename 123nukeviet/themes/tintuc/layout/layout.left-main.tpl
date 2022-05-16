<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}
<div class="ta_main">   
     <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody><tr>       
        <!--CONTENT_BOXLEFT-->
          <td width="182" valign="top" align="left">  
         [LEFT]
          </td>
        <!--ENDCONTENT_BOXLEFT-->       
          <td valign="top" class="content_box">
            [TOP]
           <div class="box_tin_tuc" id="boxCenter">
              <div class="news_box_skhdt">
                  <div class="news_box_title">
                      <span id="spanHomeCat4167">
                          <span class="right_title"></span>
                          <a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}">{LANG.Home}</a>
                          <label></label>
                          <a itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}">{BREADCRUMBS.title}</a><span class="left_title"></span>
                      </span>

                  </div>
                  
                  <div class="cont_skhdt">
                    
                     {MODULE_CONTENT}
                  </div>
              </div>
          </div>
            
       
        [BOTTOM]
          </td>
        
        </tr>
    </tbody>
  </table>
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->