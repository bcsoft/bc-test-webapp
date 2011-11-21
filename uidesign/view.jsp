<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page import="cn.bc.web.ui.html.toolbar.ToolbarRadioGroup"%>
<div title='视图设计' data-type="list" class="bc-page" data-namespace="/bs/bc/unit"
	data-js='<s:url value="/bc-test/uidesign/view.js"/>'
	data-initMethod='bc.viewDesign.init' data-name="单位"
	data-option='{width:900,height:300}'>
	<!-- 工具条 -->
	<div class="bc-toolbar ui-widget-content">
		<button
			class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			type="button" data-action="create">
			<span class="ui-button-icon-primary ui-icon ui-icon-document"></span><span
				class="ui-button-text">新建</span>
		</button>
		<button
			class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			type="button" data-action="edit">
			<span class="ui-button-icon-primary ui-icon ui-icon-pencil"></span><span
				class="ui-button-text">编辑</span>
		</button>
		<button
			class="bc-button ui-button ui-widget ui-state-default ui-corner-all ui-button-text-icon-primary"
			type="button" data-action="delete">
			<span class="ui-button-icon-primary ui-icon ui-icon-trash"></span><span
				class="ui-button-text">删除</span>
		</button>
		<button class="bc-button ui-button ui-widget ui-state-default ui-corner-all bc-menuButton ui-button-text-icon-secondary" 
			type="button" data-change="bc.buttonsDesign.selectMenuButtonItem" data-menuSelector=".bc-page">
			<span class="ui-button-text">操作</span>
			<span class="ui-button-icon-secondary ui-icon ui-icon-triangle-1-s"></span>
			<ul class="bc-menu ui-menu ui-widget ui-widget-content ui-corner-all ui-popup" 
				style="min-width: 66px; position: absolute; display: none;">
				<li data-text="操作1" data-value="v1"><a href="#">操作1</a></li>
				<li data-text="操作2" data-value="v2"><a href="#">操作2</a></li>
				<li data-text="操作3" data-value="v3" class="ui-menu-item"><a href="#">操作3</a></li>
			</ul>
		</button>
		
		<!-- <button id="contextmenu">正常</button> -->
		
		<!-- <div id="jQueryUIRadio" style="display: inline-block;" class="bc-buttonGroup">
			<input type="radio" id="radio1" name="radio" /><label for="radio1">单选11</label><input 
			type="radio" id="radio2" name="radio" checked="checked" /><label for="radio2">单选12</label><input 
			type="radio" id="radio3" name="radio" /><label for="radio3">单选13</label>
		</div> -->
		
		<div id="radioDesign" class="bc-radioGroup ui-buttonset" 
			data-change="bc.viewDesign.changeRadio" data-key="status" data-action="reloadGrid">
			<div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-left ui-state-active" data-value="0">
				<span class="ui-button-text">单选21</span>
			</div><div class="ui-button ui-widget ui-state-default ui-button-text-only" data-value="1">
				<span class="ui-button-text">单选22</span>
			</div><div class="ui-button ui-widget ui-state-default ui-button-text-only ui-corner-right" data-value="2">
				<span class="ui-button-text">单选23</span>
			</div>
		</div>
		<span class="bc-searchButton" data-action="search"><a href="#"
			id="searchBtn" class="ui-icon ui-icon-search" title="点击执行查询"></a><input
			type="text" id="searchText" class="ui-widget-content"> </span>
	</div>
	<!-- Grid -->
	<div class="bc-grid multipleSelect" remotesort="false" name="单位"
		data-dblclickrow="bc.page.edit" style="height: 330px;">
		<div class="ui-state-default header">
			<div class="left">
				<table class="table" cellspacing="0" cellpadding="0">
					<tbody>
						<tr class="ui-state-default row">
							<td class="id" title="点击全选或反选"><span
								class="ui-icon ui-icon-notice"></span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="right" style="width: 609px;">
				<table class="table" cellspacing="0" cellpadding="0"
					style="width: 690px;">
					<tbody>
						<tr class="ui-state-default row">
							<td data-id="status" data-label="状态" class="first"
								style="width: 60px"><div class="wrapper">状态</div></td>
							<td data-id="pname" data-label="上级机构" class="middle sortable"><div
									class="wrapper">
									上级机构<span class="sortableIcon ui-icon hide"></span>
								</div></td>
							<td data-id="name" data-label="名称" class="middle sortable"
								style="width: 120px"><div class="wrapper">
									名称<span class="sortableIcon ui-icon hide"></span>
								</div></td>
							<td data-id="code" data-label="编码" class="middle sortable"
								style="width: 120px"><div class="wrapper">
									编码<span class="sortableIcon ui-icon hide"></span>
								</div></td>
							<td data-id="orderNo" data-label="排序号"
								class="middle sortable current asc" style="width: 100px"><div
									class="wrapper">
									排序号<span class="sortableIcon ui-icon ui-icon-triangle-1-n"></span>
								</div></td>
							<td data-id="phone" data-label="联系电话" class="last"
								style="width: 120px"><div class="wrapper">联系电话</div></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="data" name="单位" data-pageno="1">
			<div class="left" style="height: 276px;">
				<table class="table" cellspacing="0" cellpadding="0">
					<tbody>
						<tr class="ui-state-default row odd">
							<td class="id" data-name="单位 - 宝城总部" data-id="1"><span
								class="ui-icon"></span>1</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="right" style="width: 609px; height: 276px;">
				<table class="table" cellspacing="0" cellpadding="0"
					style="width: 690px;" originwidth="690">
					<tbody>
						<tr class="ui-state-default row odd">
							<td class="first" style="width: 60px" data-value="0">正常</td>
							<td class="middle" data-value="" title=""></td>
							<td class="middle" style="width: 120px" data-value="宝城总部"
								title="宝城总部">宝城总部</td>
							<td class="middle" style="width: 120px"
								data-value="baochengzongbu" title="baochengzongbu">baochengzongbu</td>
							<td class="middle" style="width: 100px" data-value="a1"
								title="a1">a1</td>
							<td class="last" style="width: 120px" data-value=""></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<ul class="pager ui-widget-content ui-widget ui-helper-clearfix">
			<li class="pagerIcon ui-state-default ui-corner-all"
				data-action="refresh" title="刷新"><span
				class="ui-icon ui-icon-refresh"></span></li>
			<li class="pagerIcon ui-state-default ui-corner-all"
				data-action="changeSortType"
				title4clicktoremotesort="当前为本地排序,点击切换为远程排序"
				title4clicktolocalsort="当前为远程排序,点击切换为本地排序" title="当前为远程排序,点击切换为本地排序"><span
				class="ui-icon ui-icon-transferthick-e-w"></span></li>
			<li class="pagerIconGroup seek ui-state-default ui-corner-all"><a
				href="#" id="toFirstPage"
				class="pagerIcon ui-state-default ui-corner-all"><span
					class="ui-icon ui-icon-seek-first" title="首页"></span> </a><a href="#"
				id="toPrevPage" class="pagerIcon ui-state-default ui-corner-all"><span
					class="ui-icon ui-icon-seek-prev" title="上一页"></span> </a><span
				class="pageNo" title="点击选择页码"><span id="pageNo">1</span>/<span
					id="pageCount">1</span> </span><a href="#" id="toNextPage"
				class="pagerIcon ui-state-default ui-corner-all"><span
					class="ui-icon ui-icon-seek-next" title="下一页"></span> </a><a href="#"
				id="toLastPage" class="pagerIcon ui-state-default ui-corner-all"><span
					class="ui-icon ui-icon-seek-end" title="尾页"></span> </a></li>
			<li class="pagerIconGroup size ui-state-default ui-corner-all"
				title="每页显示的数量"><a href="#" id="toFirstPage"
				class="pagerIcon ui-state-default ui-corner-all ui-state-active"><span
					class="pageSize">25</span> </a><a href="#" id="toFirstPage"
				class="pagerIcon ui-state-default ui-corner-all"><span
					class="pageSize">50</span> </a><a href="#" id="toFirstPage"
				class="pagerIcon ui-state-default ui-corner-all"><span
					class="pageSize">100</span> </a></li>
			<li class="pagerIcon ui-state-default ui-corner-all"
				data-action="export" title="导出"><span
				class="ui-icon ui-icon-arrowthickstop-1-s"></span></li>
		</ul>
	</div>
</div>