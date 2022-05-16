<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}

<div class="row shadow-bg-1 bg-body-new">
    <div class="col-sm-5 col-md-5 fix-padding">
        [MENU_LEFT]
    </div>
    <div class="col-sm-14 col-md-14 fix-padding">
        [NEWS_1]
        [BANNER_CENTER]
        <!-- BEGIN: home_bottom -->
        <div class="row">
            <div class="col-sm-12 col-md-12 padding-right-tintuc-thongtinkt">[NEWS_5]</div>
            <div class="col-sm-12 col-md-12 padding-left-tintuc-thongtinkt">[NEWS_6]</div>
        </div>
        <!-- END: home_bottom -->

        <div class="border-bottom-news">
            <!-- BEGIN: breadcrumbs -->
            <nav class="third-nav">
                <div class="row">
                    <div class="bg">
                        <div class="clearfix">
                            <div class="col-xs-24 col-sm-24 col-md-24">
                                <div class="breadcrumbs-wrap">
                                    <div class="display">
                                        <a class="show-subs-breadcrumbs hidden" href="#" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                                        <div class="breadcrumbs-bg">
                                            <ul class="breadcrumbs list-none"></ul>
                                        </div>
                                    </div>
                                    <ul class="subs-breadcrumbs"></ul>
                                    <ul class="temp-breadcrumbs hidden">
                                        <li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
                                        <!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span class="txt" itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- END: breadcrumbs -->
            {MODULE_CONTENT}
            [BOTTOM]
        </div>
    </div>
    <div class="col-sm-5 col-md-5 fix-padding">
        [RIGHT_1]
    </div>
</div>
<div class="row shadow-bg bg-body-new">
    [FOOTER]
</div>
<div class="row shadow-bg-2 bg-body-new fix-padding">
    [FOOTER_2]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->