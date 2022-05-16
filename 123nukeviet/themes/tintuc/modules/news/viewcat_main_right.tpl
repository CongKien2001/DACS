<!-- BEGIN: main -->
<!-- BEGIN: listcat -->
<div class="news_column">
<div class="news_box_skhdt">
                        <div class="news_box_title"><span class="right_title"></span><a title="{CAT.title}" href="{CAT.link}">{CAT.title}</a><span class="left_title"></span></div>
                        <div class="cont_skhdt">
                           <div class="list_float_right">
                              <div id='dvListOtherNewLink'>
                                 <div class='article_item_title'>Các tin đã đăng</div>
                           
                                 <ul class='kg_ul_list_news'>
                                    <li class="{CLASS}">
                                          <a class='article_item_link'  href="{OTHER.link}" title="{OTHER.title}" {OTHER.target_blank} <!-- BEGIN: tooltip -->data-content="{OTHER.hometext_clean}" data-img="{OTHER.imghome}" data-rel="tooltip" data-placement="{TOOLTIP_POSITION}"<!-- END: tooltip --> > {OTHER.title}&nbsp; <img id='imgHot_New28' alt='Tin m&#7899;i' title='Tin m&#7899;i' src="{NV_BASE_SITEURL}themes/tintuc/images/icons/icon-hot.gif" class='img_hot_new57'/> </a>
                                       <font class='article_date'><li><em class="fa fa-clock-o">&nbsp;</em> {CONTENT.publtime}</font>
                                       </li>
                                    </li>
                                 </ul>
                              </div>
                           </div>
                           <div class="content_float_left">
                              <div class='artItem' id='article1551068745030'>
                                
                                 <a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank} class='article_title_link'>
                                    <div class='article_title '>{CONTENT.title}&nbsp;<img id='imgHot_New28' alt='Tin m&#7899;i' title='Tin m&#7899;i'  src="{NV_BASE_SITEURL}themes/tintuc/images/icons/icon-hot.gif" /></div>
                                 </a>

                                <a title="{CONTENT.title}" href="{CONTENT.link}" {CONTENT.target_blank}><img class="img_comment img_float_right" src="{HOMEIMG}" alt="{HOMEIMGALT}" width="{IMGWIDTH}"></a>
                                
                                 <div class='article_summary '>{CONTENT.hometext}</div>
                                 <a href='#' class='continue'>Xem tiếp</a>
                                 <div class='clear'></div>
                              </div>
                           </div>
                           <div class="clear"></div>
                        </div>
                     </div>
                      <div class="bottom-cat clear">
      {BLOCK_BOTTOMCAT}
   </div>
</div>
<!-- END: listcat -->
<!-- END: main -->