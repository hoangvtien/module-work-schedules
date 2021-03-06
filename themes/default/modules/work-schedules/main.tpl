<!-- BEGIN: main -->
<div class="schedule-list-tool clearfix">
    <div class="pull-left">
        <div class="dropdown">
            <button class="btn btn-warning dropdown-toggle" type="button" data-toggle="dropdown">
                {LANG.week_stt} {CURRENT_WEEK.stt} ({CURRENT_WEEK.from} {LANG.to} {CURRENT_WEEK.to})
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <!-- BEGIN: week --><li><a href="{WEEK.link}">{LANG.week_stt} {WEEK.stt} ({WEEK.from} {LANG.to} {WEEK.to})</a></li><!-- END: week -->
            </ul>
        </div>
    </div>
    <div class="pull-right">
        <a class="btn btn-info btn-sm" href="{LINK_ADD}"><i class="fa fa-plus"></i> {LANG_ADD}</a>
        <a class="btn btn-info btn-sm" href="{LINK_MANAGER}"><i class="fa fa-briefcase"></i> {LANG.manager}<!-- BEGIN: numqueues --> (<strong>{NUMQUEUES}</strong>)<!-- END: numqueues --></a>
        <a class="btn btn-info btn-sm" rel="nofollow" title="{LANG.event_print}" href="{LINK_PRINT}"><i class="fa fa-print"></i></a>
        <a class="btn btn-info btn-sm" rel="nofollow" title="{LANG.event_download}" href="{LINK_DOWNLOAD}"><i class="fa fa-download"></i></a>
    </div>
</div>
<!-- BEGIN: empty -->
<div class="alert alert-warning">
    <div class="message-box-title"><i class="fa fa-exclamation-triangle"></i> {LANG.schedule_empty}</div>
    <div class="message-box-content">
        {LANG.schedule_empty_guide}
    </div>
</div>
<!-- END: empty -->
<!-- BEGIN: data -->
<table class="table table-bordered schedule-list mb20">
    <thead>
        <tr>
            <th class="text-center">{LANG.daytime}</th>
            <th class="text-center" style="white-space: nowrap;">{LANG.event_time}</th>
            <th class="text-center">{LANG.event_content}</th>
            <th class="text-center">{LANG.event_element}</th>
            <th class="text-center">{LANG.event_place}</th>
            <th class="text-center">{LANG.event_host}</th>
        </tr>
    </thead>
    <tbody>
        <!-- BEGIN: loop -->
        <tr>
            <!-- BEGIN: first_col -->
            <td class="text-center middle"<!-- BEGIN: rowspan --> rowspan="{NUMROWS}"<!-- END: rowspan -->>
                {DAYOFWEEK}<br />
                {DAYTEXT}
            </td>
            <!-- END: first_col -->
            <td class="text-center middle{ROW.highlights}">
                <strong>{ROW.etime}</strong>
            </td>
            <td class="middle{ROW.highlights}">
                <!-- BEGIN: edit -->
                <div class="pull-right"><a href="{ROW.url_edit}"><i class="fa fa-edit"></i></a></div>
                <!-- END: edit -->
                {ROW.e_content}
            </td>
            <td class="middle{ROW.highlights}">{ROW.e_element}</td>
            <td class="middle{ROW.highlights}">{ROW.e_location}</td>
            <td class="middle{ROW.highlights}"><strong>{ROW.e_host}</strong></td>
        </tr>
        <!-- END: loop -->
    </tbody>
</table>
<div class="schedule-list-mobile">
    <!-- BEGIN: loop_mobile -->
    <!-- BEGIN: title -->
    <div class="gdl-header-wrapper">
        <div class="gdl-header-left-bar"></div>
        <div class="gdl-header-left-bar"></div>
        <h3 class="gdl-header-title">{DAYOFWEEK} <em>({DAYTEXT})</em></h3>
        <div class="gdl-header-divider"></div>
        <div class="clear"></div>
    </div>
    <!-- END: title -->
    <div class="panel panel-{ROW.panel_type}">
        <div class="panel-body bg-{ROW.panel_type}">
            <div><strong>{ROW.etime}</strong>:</div>
            {ROW.e_content}
            <div class="gdl-divider gdl-border-x top margin-bottom margin-top"><div class="scroll-top"></div></div>
            <strong>{LANG.event_element}:</strong> {ROW.e_element}
            <div class="gdl-divider gdl-border-x top margin-bottom margin-top"><div class="scroll-top"></div></div>
            <strong>{LANG.event_place}:</strong> {ROW.e_location}
            <div class="gdl-divider gdl-border-x top margin-bottom margin-top"><div class="scroll-top"></div></div>
            <strong>{LANG.event_host}:</strong> <strong>{ROW.e_host}</strong>
        </div>
    </div>
    <!-- END: loop_mobile -->
</div>
<!-- END: data -->
<div class="alert alert-info">
    <div class="message-box-title"><i class="fa fa-info-circle"></i> {LANG.event_note}</div>
    <div class="message-box-content">
        {LANG.event_note_detail}
    </div>
</div>
<!-- END: main -->