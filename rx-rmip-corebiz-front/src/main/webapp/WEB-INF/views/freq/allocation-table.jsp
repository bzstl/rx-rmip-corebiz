<%@page import="java.math.BigDecimal"%>
<%@page import="org.apache.xmlbeans.impl.xb.xsdschema.Public"%>
<%@page import="org.aspectj.weaver.ast.Var"%>
<%@page import="com.alibaba.druid.sql.visitor.functions.If"%>
<%@page language="java" pageEncoding="utf-8"%>
<%@include file="../../common/base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>频率划分对比</title>

		<meta name="description" content="Static &amp; Dynamic Tables" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${ctx }assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${ctx }assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->
		<link rel="stylesheet" href="${ctx }assets/css/jquery-ui.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="${ctx }assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="${ctx }assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${ctx }assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${ctx }assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${ctx }assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${ctx }assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="${ctx }assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="${ctx }assets/js/html5shiv.min.js"></script>
		<script src="${ctx }assets/js/respond.min.js"></script>
		<![endif]-->
		
		<style type="text/css">
		input.error { border: 1px solid red; }
		
		.error{
		color:red;
		}
		
		/* 表格边框颜色定义成黑色 */
		/* .table-bordered, 
		.table-bordered > tbody > tr > td, 
		.table-bordered > tbody > tr > th, 
		.table-bordered > tfoot > tr > td, 
		.table-bordered > tfoot > tr > th, 
		.table-bordered > thead > tr > td, 
		.table-bordered > thead > tr > th 
		{
	    	border: 1px solid #000000!important;
		} */
		</style>
		<link rel="stylesheet" href="${ctx }assets/css/common.css" />
	</head>

	<body class="no-skin">
		<%@include file="../../common/header.jsp" %>
		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<%@include file="../../common/sidebar.jsp" %>
			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="${ctx }index">首页</a>
							</li>
							<li>
								<a href="#">频率规划管理</a>
							</li>
							<li>
								<a href="#">频率划分</a>
							</li>
							<li class="active">频率划分对比</li>
						</ul><!-- /.breadcrumb -->
					</div>

					<div class="page-content">

						<div class="page-header">
							<form id="allocForm" class="form-inline" role="form">
								<div class="form-group" style="margin-right: 30px;">
									<input id="sFreq" name="sFreq" class="form-control" type="text" class="input-small" placeholder="StartFreq"/>
									<select id="sUnit" class="form-control" style="height: 34px; padding-top: 5px; padding-bottom: 6px;">
										<option value="khz">KHz</option>
										<option value="mhz" selected="selected">MHz</option>
										<option value="ghz">GHz</option>
									</select>
								</div>
								<div class="form-group" style="margin-right: 10px;">
									<input id="eFreq" name="eFreq" class="form-control" type="text" class="input-small" placeholder="EndFreq"/>
									<select id="eUnit" class="form-control" style="height: 34px; padding-top: 5px; padding-bottom: 6px;" >
										<option value="khz">KHz</option>
										<option value="mhz" selected="selected">MHz</option>
										<option value="ghz">GHz</option>
									</select>
								</div>
								<button id="searchForAlloc" type="submit" class="btn btn-purple btn-info btn-sm">
									<span class="ace-icon fa fa-search bigger-110"></span>
									搜索
								</button>
							</form>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>																	
													<th class="center" style="width: 25%">中国大陆</th>
													<th class="center" style="width: 25%">中国香港</th>
													<th class="center" style="width: 25%">中国澳门</th>
													<th class="center" style="width: 25%">国际电联3区</th>
												</tr>
											</thead>

											<tbody>
												<c:set var="CNi" value="${0}"></c:set>
												<c:set var="HKi" value="${0}"></c:set>
												<c:set var="ITU3i" value="${0}"></c:set>
												<c:set var="MOi" value="${0}"></c:set>
												<%!String allocServString = ""; %>
												<%!String allocFootnoteString = ""; %>
												<%!java.math.BigDecimal bandB ; %>
												<%!java.math.BigDecimal bandE ; %>
												<%!String bandBString = ""; %>
												<%!String bandEString = ""; %>
												<%!
												public String getFreqAndUnit(java.math.BigDecimal freq){
													String freqString = "";
													java.math.BigDecimal bigD1000 = java.math.BigDecimal.valueOf(1000);
													java.math.BigDecimal bigD1 = java.math.BigDecimal.valueOf(1);
													java.text.NumberFormat nf = java.text.NumberFormat.getInstance();
													if(freq.compareTo(bigD1) == -1){
														freqString += nf.format(freq.multiply(bigD1000).doubleValue());
														freqString += "KHz";
													}
													else if(freq.compareTo(bigD1) >= 0 && freq.compareTo(bigD1000) == -1){
														freqString += freq.toString();
														freqString += "MHz";
													}
													else if(freq.compareTo(bigD1000) >= 0){
														freqString += freq.divide(bigD1000).toString();
														freqString += "GHz";
													}
													return freqString;
												}
												%>
												<c:forEach var="allocArchor" items="${allocArchors}">
													<tr id="TR_${allocArchor}">																							
														<td class="freqAllocTd" style="border-bottom-width:0px;">
															<c:if test="${allocCNData[CNi].bandB.compareTo(allocArchor)==0}">
																<c:set var="bandBCN" value="${allocCNData[CNi].bandB}"/>
																<c:set var="bandECN" value="${allocCNData[CNi].bandE}"/>
																<%
																bandBString = "";
																bandEString = "";
																
																bandB = ((java.math.BigDecimal)pageContext.findAttribute("bandBCN"));
																bandBString = getFreqAndUnit(bandB);
																
																bandE = ((java.math.BigDecimal)pageContext.findAttribute("bandECN"));
																bandEString = getFreqAndUnit(bandE);
																%>
																<b><%= bandBString %>-<%= bandEString %></b>
																<div style="padding-left:10px;">
																	<table>
																		<c:forEach var="allocCNService" items="${allocCNData[CNi].allocServiceList}">
																			<c:set var="serviceCNGuid" value="${allocCNService.guid}"/>
																			<c:set var="serviceCNName" value="${allocCNService.service.servName}"/>
																			<c:set var="serviceCNAddInfo" value="${allocCNService.addiInfo}"/>
																			<c:set var="serviceCNType" value="${allocCNService.servType}"/>
																			<c:set var="serviceCNFootnote" value="${allocCNService.fnCode}"/>
																			<tr>
																				<td style="word-warp: brak-word; word-break: break-all;">
																					<% 
																						allocServString = "";
																						if(pageContext.findAttribute("serviceCNType").toString().compareTo("0") == 0 ){ 
																						 	allocServString += "["; 
																						 	allocServString += "&nbsp;";
																						} 
																						if(pageContext.findAttribute("serviceCNName") != "" && pageContext.findAttribute("serviceCNName") != null){
																							allocServString += pageContext.findAttribute("serviceCNName");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceCNAddInfo") != "" && pageContext.findAttribute("serviceCNAddInfo") != null){
																							allocServString += pageContext.findAttribute("serviceCNAddInfo");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceCNType").toString().compareTo("0") == 0){ 
																						 	allocServString += "]"; 
																						 	allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceCNFootnote") != "" && pageContext.findAttribute("serviceCNFootnote") != null){
																							String tempString = pageContext.findAttribute("serviceCNFootnote").toString();
																							String[] footnoteStrings = tempString.split(" ");
																							for(String footnotesString:footnoteStrings){
																								allocServString += "<a href=javascript:showFootnote('"
																										+ footnotesString
																										+ "')>"
																										+ footnotesString
																										+ "</a>&nbsp;";
																							}
																						}
																					%>
																					<%= allocServString %>
																				</td>
																			</tr>
																		</c:forEach>
																		<tr>
																			<c:set var="allocFootnote">${allocCNData[CNi].fnCode}</c:set>
																			<td class="" abbr="${allocFootnote}" style="word-warp: brak-word; word-break: break-all;">
																				<%
																				allocFootnoteString = "";
																				String tempString = pageContext.findAttribute("allocFootnote").toString();
																				String[] footnoteStrings = tempString.split(" ");
																				for(String footnotesString:footnoteStrings){
																					allocFootnoteString += "<a href=javascript:showFootnote('"
																							+ footnotesString
																							+ "')>"
																							+ footnotesString
																							+ "</a>&nbsp;";
																				}
																				%>
																				<%= allocFootnoteString %>
																			</td>
																		</tr>
																	</table>
																</div>
																<c:set var="CNi" value="${CNi+1}"></c:set>
															</c:if>
															<c:if test="${allocCNData[CNi].bandB.compareTo(allocArchor)!=0}">
															</c:if>
														</td>
														<td class="freqAllocTd" style="border-bottom-width:0px;">
															<c:if test="${allocHKData[HKi].bandB.compareTo(allocArchor)==0}">
																<c:set var="bandBHK" value="${allocHKData[HKi].bandB}"/>
																<c:set var="bandEHK" value="${allocHKData[HKi].bandE}"/>
																<%
																bandBString = "";
																bandEString = "";
																
																bandB = ((java.math.BigDecimal)pageContext.findAttribute("bandBHK"));
																bandBString = getFreqAndUnit(bandB);
																
																bandE = ((java.math.BigDecimal)pageContext.findAttribute("bandEHK"));
																bandEString = getFreqAndUnit(bandE);
																%>
																<b><%= bandBString %>-<%= bandEString %></b>
																<div style="padding-left:10px;">
																	<table>
																		<c:forEach var="allocHKService" items="${allocHKData[HKi].allocServiceList}">
																			<c:set var="serviceHKGuid" value="${allocHKService.guid}"/>
																			<c:set var="serviceHKName" value="${allocHKService.service.servName}"/>
																			<c:set var="serviceHKAddInfo" value="${allocHKService.addiInfo}"/>
																			<c:set var="serviceHKType" value="${allocHKService.servType}"/>
																			<c:set var="serviceHKFootnote" value="${allocHKService.fnCode}"/>
																			<tr>
																				<td style="word-warp: brak-word; word-break: break-all;">
																					<% 
																						allocServString = "";
																						if(pageContext.findAttribute("serviceHKType").toString().compareTo("0") == 0){ 
																						 	allocServString += "["; 
																						 	allocServString += "&nbsp;";
																						} 
																						if(pageContext.findAttribute("serviceHKName") != "" && pageContext.findAttribute("serviceHKName") != null){
																							allocServString += pageContext.findAttribute("serviceHKName");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceHKAddInfo") != "" && pageContext.findAttribute("serviceHKAddInfo") != null){
																							allocServString += pageContext.findAttribute("serviceHKAddInfo");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceHKType").toString().compareTo("0") == 0){ 
																						 	allocServString += "]"; 
																						 	allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceHKFootnote") != "" && pageContext.findAttribute("serviceHKFootnote") != null){
																							String tempString = pageContext.findAttribute("serviceHKFootnote").toString();
																							String[] footnoteStrings = tempString.split(" ");
																							for(String footnotesString:footnoteStrings){
																								allocServString += "<a href=javascript:showFootnote('"
																										+ footnotesString
																										+ "')>"
																										+ footnotesString
																										+ "</a>&nbsp;";
																							}
																						}
																					%>
																					<%= allocServString %>
																				</td>
																			</tr>
																		</c:forEach>
																		<tr>
																			<c:set var="allocFootnote">${allocHKData[HKi].fnCode}</c:set>
																			<td class="" abbr="${allocFootnote}" style="word-warp: brak-word; word-break: break-all;">
																				<%
																				allocFootnoteString = "";
																				String tempString = pageContext.findAttribute("allocFootnote").toString();
																				String[] footnoteStrings = tempString.split(" ");
																				for(String footnotesString:footnoteStrings){
																					allocFootnoteString += "<a href=javascript:showFootnote('"
																							+ footnotesString
																							+ "')>"
																							+ footnotesString
																							+ "</a>&nbsp;";
																				}
																				%>
																				<%= allocFootnoteString %>
																			</td>
																		</tr>
																	</table>
																</div>
																<c:set var="HKi" value="${HKi+1}"></c:set>
															</c:if>
															<c:if test="${allocHKData[HKi].bandB.compareTo(allocArchor)!=0}">
															</c:if>
														</td>	
														<td class="freqAllocTd" style="border-bottom-width:0px;">
															<c:if test="${allocMOData[MOi].bandB.compareTo(allocArchor)==0}">
																<c:set var="bandBMO" value="${allocMOData[MOi].bandB}"/>
																<c:set var="bandEMO" value="${allocMOData[MOi].bandE}"/>
																<%
																bandBString = "";
																bandEString = "";
																
																bandB = ((java.math.BigDecimal)pageContext.findAttribute("bandBMO"));
																bandBString = getFreqAndUnit(bandB);
																
																bandE = ((java.math.BigDecimal)pageContext.findAttribute("bandEMO"));
																bandEString = getFreqAndUnit(bandE);
																%>
																<b><%= bandBString %>-<%= bandEString %></b>
																<div style="padding-left:10px;">
																	<table>
																		<c:forEach var="allocMOService" items="${allocMOData[MOi].allocServiceList}">
																			<c:set var="serviceMOGuid" value="${allocMOService.guid}"/>
																			<c:set var="serviceMOName" value="${allocMOService.service.servName}"/>
																			<c:set var="serviceMOAddInfo" value="${allocMOService.addiInfo}"/>
																			<c:set var="serviceMOType" value="${allocMOService.servType}"/>
																			<c:set var="serviceMOFootnote" value="${allocMOService.fnCode}"/>
																			<tr>
																				<td style="word-warp: brak-word; word-break: break-all;">
																					<% 
																						allocServString = "";
																						if(pageContext.findAttribute("serviceMOType").toString().compareTo("0") == 0){ 
																						 	allocServString += "["; 
																						 	allocServString += "&nbsp;";
																						} 
																						if(pageContext.findAttribute("serviceMOName") != "" && pageContext.findAttribute("serviceMOName") != null){
																							allocServString += pageContext.findAttribute("serviceMOName");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceMOAddInfo") != "" && pageContext.findAttribute("serviceMOAddInfo") != null){
																							allocServString += pageContext.findAttribute("serviceMOAddInfo");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceMOType").toString().compareTo("0") == 0){ 
																						 	allocServString += "]"; 
																						 	allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceMOFootnote") != "" && pageContext.findAttribute("serviceMOFootnote") != null){
																							String tempString = pageContext.findAttribute("serviceMOFootnote").toString();
																							String[] footnoteStrings = tempString.split(" ");
																							for(String footnotesString:footnoteStrings){
																								allocServString += "<a href=javascript:showFootnote('"
																										+ footnotesString
																										+ "')>"
																										+ footnotesString
																										+ "</a>&nbsp;";
																							}
																						}
																					%>
																					<%= allocServString %>
																				</td>
																			</tr>
																		</c:forEach>
																		<tr>
																			<c:set var="allocFootnote">${allocMOData[MOi].fnCode}</c:set>
																			<td class="" abbr="${allocFootnote}" style="word-warp: brak-word; word-break: break-all;">
																				<%
																				allocFootnoteString = "";
																				String tempString = pageContext.findAttribute("allocFootnote").toString();
																				String[] footnoteStrings = tempString.split(" ");
																				for(String footnotesString:footnoteStrings){
																					allocFootnoteString += "<a href=javascript:showFootnote('"
																							+ footnotesString
																							+ "')>"
																							+ footnotesString
																							+ "</a>&nbsp;";
																				}
																				%>
																				<%= allocFootnoteString %>
																			</td>
																		</tr>
																	</table>
																</div>
																<c:set var="MOi" value="${MOi+1}"></c:set>
															</c:if>
															<c:if test="${allocMOData[MOi].bandB.compareTo(allocArchor)!=0}">
															</c:if>
														</td>	
														<td class="freqAllocTd" style="border-bottom-width:0px;">
															<c:if test="${allocITU3Data[ITU3i].bandB.compareTo(allocArchor)==0}">
																<c:set var="bandBITU3" value="${allocITU3Data[ITU3i].bandB}"/>
																<c:set var="bandEITU3" value="${allocITU3Data[ITU3i].bandE}"/>
																<%
																bandBString = "";
																bandEString = "";
																
																bandB = ((java.math.BigDecimal)pageContext.findAttribute("bandBITU3"));
																bandBString = getFreqAndUnit(bandB);
																
																bandE = ((java.math.BigDecimal)pageContext.findAttribute("bandEITU3"));
																bandEString = getFreqAndUnit(bandE);
																%>
																<b><%= bandBString %>-<%= bandEString %></b>
																<div style="padding-left:10px;">
																	<table>
																		<c:forEach var="allocITU3Service" items="${allocITU3Data[ITU3i].allocServiceList}">
																			<c:set var="serviceITU3Guid" value="${allocITU3Service.guid}"/>
																			<c:set var="serviceITU3Name" value="${allocITU3Service.service.servName}"/>
																			<c:set var="serviceITU3AddInfo" value="${allocITU3Service.addiInfo}"/>
																			<c:set var="serviceITU3Type" value="${allocITU3Service.servType}"/>
																			<c:set var="serviceITU3Footnote" value="${allocITU3Service.fnCode}"/>
																			<tr>
																				<td style="word-warp: brak-word; word-break: break-all;">
																					<% 
																						allocServString = "";
																						if(pageContext.findAttribute("serviceITU3Type").toString().compareTo("0") == 0){ 
																						 	allocServString += "["; 
																						 	allocServString += "&nbsp;";
																						} 
																						if(pageContext.findAttribute("serviceITU3Name") != "" && pageContext.findAttribute("serviceITU3Name") != null){
																							allocServString += pageContext.findAttribute("serviceITU3Name");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceITU3AddInfo") != "" && pageContext.findAttribute("serviceITU3AddInfo") != null){
																							allocServString += pageContext.findAttribute("serviceITU3AddInfo");
																							allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceITU3Type").toString().compareTo("0") == 0){ 
																						 	allocServString += "]"; 
																						 	allocServString += "&nbsp;";
																						}
																						if(pageContext.findAttribute("serviceITU3Footnote") != "" && pageContext.findAttribute("serviceITU3Footnote") != null){
																							String tempString = pageContext.findAttribute("serviceITU3Footnote").toString();
																							String[] footnoteStrings = tempString.split(" ");
																							for(String footnotesString:footnoteStrings){
																								allocServString += "<a href=javascript:showFootnote('"
																										+ footnotesString
																										+ "')>"
																										+ footnotesString
																										+ "</a>&nbsp;";
																							}
																						}
																					%>
																					<%= allocServString %>
																				</td>
																			</tr>
																		</c:forEach>
																		<tr>
																			<c:set var="allocFootnote">${allocITU3Data[ITU3i].fnCode}</c:set>
																			<td class="" abbr="${allocFootnote}" style="word-warp: brak-word; word-break: break-all;">
																				<%
																				allocFootnoteString = "";
																				String tempString = pageContext.findAttribute("allocFootnote").toString();
																				String[] footnoteStrings = tempString.split(" ");
																				for(String footnotesString:footnoteStrings){
																					allocFootnoteString += "<a href=javascript:showFootnote('"
																							+ footnotesString
																							+ "')>"
																							+ footnotesString
																							+ "</a>&nbsp;";
																				}
																				%>
																				<%= allocFootnoteString %>
																			</td>
																		</tr>
																	</table>
																</div>
																<c:set var="ITU3i" value="${ITU3i+1}"></c:set>
															</c:if>
															<c:if test="${allocITU3Data[ITU3i].bandB.compareTo(allocArchor)!=0}">
															</c:if>
														</td>
																									
													</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<%@include file="../../common/footer.jsp" %>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${ctx }assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${ctx }assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="${ctx }assets/js/jquery.dataTables.min.js"></script>
		<script src="${ctx }assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="${ctx }assets/js/dataTables.buttons.min.js"></script>
		<script src="${ctx }assets/js/buttons.flash.min.js"></script>
		<script src="${ctx }assets/js/buttons.html5.min.js"></script>
		<script src="${ctx }assets/js/buttons.print.min.js"></script>
		<script src="${ctx }assets/js/buttons.colVis.min.js"></script>
		<script src="${ctx }assets/js/dataTables.select.min.js"></script>
		<script src="${ctx }assets/js/jquery-ui.min.js"></script>
		<script src="${ctx }assets/js/jquery.ui.touch-punch.min.js"></script>

		<!-- ace scripts -->
		<script src="${ctx }assets/js/ace-elements.min.js"></script>
		<script src="${ctx }assets/js/ace.min.js"></script>
		
		<!-- basic scripts -->
		
		<!--[if !IE]> -->
		<script src="${ctx }assets/js/jquery-2.1.4.min.js"></script>
		<!-- <![endif]-->

		<!--[if IE]>
		<script src="${ctx }assets/js/jquery-1.11.3.min.js"></script>
		<![endif]-->
		<script type="text/javascript" src="${ctx }assets/js/freq/alloc/alloc.js"></script>
		<script type="text/javascript" src="${ctx }assets/js/freq/layer/layer.js"></script>
		<script type="text/javascript" src="${ctx }assets/js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${ctx }assets/js/freq/validate-additional-method.js"></script>
		<script type="text/javascript">
			$(function(){
				// 合并空白单元格
				$(".freqAllocTd").each(function() {
					var html = $(this).text();
					html = $.trim(html);
					if (html == "") {
						$(this).css("border-top-width","0px");
						$(this).css("border-bottom-width","0px");
					}
				});
				// 验证通过进行搜索
				$.validator.setDefaults({
				   
					errorPlacement: function(error, element) {  
					    error.appendTo(element.parent());  
					},
				
					submitHandler: function() {
				    	$("#searchForAlloc").click(function() {
							
							var sFreq = $("#sFreq").val();
							var eFreq = $("#eFreq").val();
							var sUnit = $("#sUnit").val();
							var eUnit = $("#eUnit").val();
							if (sFreq != "" && eFreq != "") {
								if (sUnit == "mhz") {
									sFreq = Math.round(sFreq * 1000);
								}
								else if (sUnit == "ghz") {
									sFreq = Math.round(sFreq * 1000000);
								}
								else {
									sFreq = Math.round(sFreq);
								}
								
								if (eUnit == "mhz") {
									eFreq = Math.round(eFreq * 1000);
								}
								else if (eUnit == "ghz") {
									eFreq = Math.round(eFreq * 1000000);
								}
								else {
									eFreq = Math.round(eFreq);
								}
								
								var freqTR = $("tr[id^='TR_']");
								freqTR.each(function() {
									var id = $(this).attr("id");
									var ids = id.split("_");
									var freq = Math.round(ids[1] * 1000);
									if (freq < sFreq || freq > eFreq) {
										$(this).css("display","none");
									}
									else {
										$(this).css("display","");
									}
								});
							}
						});
				    }
				});
				// 输入框验证规则
				$("#allocForm").validate({
					rules:{
						sFreq:{
							required:true,
							plusDecimal:true
						},
						eFreq:{
							required:true,
							plusDecimal:true,
							freq2GTfreq1:true
						}
					},
					messages:{
						sFreq:{
							required:"不能为空"
						},
						eFreq:{
							required:"不能为空"
						}
					}
				});
			});
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				/* $('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			
			
					select: {
						style: 'multi'
					}
			    } ); */
			
				
				
				/* $.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap'; */
				
				/* new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} ); */
				/* myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				}); */
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				/* myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} ); */
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				/* $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement}); */
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
			})
		</script>
	</body>
</html>
