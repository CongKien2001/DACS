<div class="ta_footer" >
         <div class="footer_menu">
            <ul class="catLV1">
               <li>
                  <div id='cat399491381996391694' class='catalogue_bottom'><a href='goi-bai.htm' class='catalogue_center_link'>Gởi bài</a></a></div>
               </li>
               <li><font class='showunicode'><a href='download/unicode.zip' class='showunicode_link'> Unicode</a></font></li>
               <li><font class='showsuggestion'><a href='javascript: openFormMail("www/feedback.jsp","emailer")' class='showsuggestion_link'> G&oacute;p &yacute;</a></font></li>
            </ul>
         </div>
         <div class="footer">
            <div class="copyright">
               <div align="center">
                  [FOOTER_SITE]
               </div>
            </div>
         </div>
      </div>
       <script type="text/javascript"> $("div.title_main_rmv span.right_title").remove(); $("div.title_main_rmv span.left_title").remove(); </script>
      <script type="text/javascript" src="js/comment.js"></script>
      <script type="text/javascript" src="js/popup.js"></script>
      <script type="text/javascript" src="js/ajaxtabs.js"></script>
      <script type="text/javascript" src="js/service.js"></script>
      <script type="text/javascript" src="/js/homeIndex.js"></script>
    
      <script type="text/javascript" src="js/jwplayer.js"></script>
      <script type="text/javascript">jwplayer.key="fnORFeJhF5JFrFMTIz3Cw/ps2R7vMsEdd+Ie61CVSUwLTuOBWxAb8AONVdcGvYA5";</script>
      <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
      <script type="text/javascript" src="js/jquery.cookie.js"></script>
      <script type="text/javascript" src="js/display.js"></script>
      <script type="text/javascript" src="js/expand.js"></script>
      <script type="text/javascript" src="js/vt-ajax-tooltip.js"> </script>
      
      <script type="text/javascript" src="/js/jquery.jcarousel.min.js"></script>
      <script type="text/javascript" src="/js/jquery.vnitt_jcarousel.js"></script>
      <script type="text/javascript"> 
                           var $aLatesNews;var $aMostReadNews;var $dLatesNews;var $dMostReadNews; 
                           var $dContentSummary; var $dViewSummary; var dContentSummaryLength; var summaryIndex = -1; var setItl; var viewSummaryDESC = 0;
                           $(document).ready(function(){
                           $aLatesNews = $("#aLatesNews");$aMostReadNews = $("#aMostReadNews");$dLatesNews = $("#dLatesNews");$dMostReadNews = $("#dMostReadNews");
                           $aLatesNews.click(function(){$dMostReadNews.hide();$dLatesNews.show();
                           $aLatesNews.css("background","white url(/3cms/images/binhphuoc/bg_tab_news_hover.jpg) repeat-x");$aMostReadNews.css("background", "none");});
                           $aMostReadNews.click(function(){$dLatesNews.hide();$dMostReadNews.show();
                           $aMostReadNews.css("background","white url(/3cms/images/binhphuoc/bg_tab_news_hover.jpg) repeat-x");$aLatesNews.css("background", "none");});   
                           $dContentSummary = $("#dContentSummary584-612-34d > div");
                           dContentSummaryLength = $dContentSummary.length; $dViewSummary = $("#dViewSummary5761d-774ed45");
                           var $imgNextSummary = $("#imgNextSummary574d-57h7f");
                           var $imgPreSummary = $("#imgPreSummary574d-57h7f");
                           //$dViewSummary.hover(function(){ $imgNextSummary.fadeIn(); $imgPreSummary.fadeIn(); }, function(){ $imgNextSummary.fadeOut(); $imgPreSummary.fadeOut(); });
                           $imgNextSummary.click(function(){ viewSummaryDESC = 1; resetInterval(); });
                           $imgPreSummary.click(function(){ viewSummaryDESC = 2; resetInterval(); });
                           resetInterval();
                           });
                           function resetInterval() {
                           if(viewSummaryDESC == 1 && summaryIndex == (dContentSummaryLength - 1)) summaryIndex = -1;
                           if(viewSummaryDESC == 2 && summaryIndex == 0) summaryIndex = dContentSummaryLength;
                           if(viewSummaryDESC == 1) { summaryIndex++;  } else { summaryIndex--; }
                           /*if(summaryIndex>(dContentSummaryLength-1)||summaryIndex<0){summaryIndex=0;}*/
                           $dViewSummary.html($dContentSummary.eq(summaryIndex).html());
                           clearInterval(setItl); setItlFunction(); } viewSummaryDESC = 1;
                           function setItlFunction() {
                           setItl = setInterval(function() { summaryIndex++;  if(summaryIndex > (dContentSummaryLength -1)) summaryIndex = 0;
                           $dViewSummary.html($dContentSummary.eq(summaryIndex).html()); }, 50000);
                           }
                        </script>
   </body>