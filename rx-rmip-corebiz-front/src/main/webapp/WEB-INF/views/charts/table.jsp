<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
								<div class="row">
									<div class="col-xs-12">
										<div class="btn-group" >
											<button data-toggle="dropdown" class="btn btn-info btn-lg dropdown-toggle" style="min-width: 160px;">
												<span class="type1">统计类型</span><input type="hidden" class="type1" name="type1" value="0">
												<i class="ace-icon fa fa-angle-down icon-on-right" style="float: right; margin-top:4px ;"></i>
											</button>
						
											<ul class="dropdown-menu dropdown-success dropdown-menu-right">
												<li>
													<a onclick="textChange('span.type1','按单位统计');$('input.type1').val('axischart15');">按单位统计</a>
												</li>
						
												<li>
													<a onclick="textChange('span.type1','按业务类型统计');$('input.type1').val('axischart16');">按业务类型统计</a>
												</li>
											</ul>
										</div><!-- /.btn-group -->
										
										
										<script type="text/javascript">
										function submitBt(url){
											var url="charts/"+url;
											  $.ajax({
												type : 'get',
												url : url,
												data :{},
												success : function(data){
													$(".chart-content").html(data);
												}
											}); 	
										};
										function textChange(selector,content){
											$(selector).html(content);
										}
										</script>
									
										<div class="input-group" style="width: 300px">
											<input type="text" value="输入统计条件" class="form-control" name="keywords" placeholder="Look within results" />
											<div class="input-group-btn">
												<button type="button" class="btn btn-default no-border btn-sm">
													<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
												</button>
											</div>
										</div>
										
										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
										 					<label class="pos-rel">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</th>
														<th>行政许可文号</th>
														<th>申请单位名称</th>
														<th>业务类型</th>
														<th class="hidden-480">具体信息</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td class="center">
															<label class="pos-rel">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															********
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">申请频段**MHz-**MHz</td>
														
													</tr>
													<tr>
														<td class="center">
															<label class="pos-rel">
																<input type="checkbox" class="ace" />
																<span class="lbl"></span>
															</label>
														</td>

														<td>
															********
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">申请频段**MHz-**MHz</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								
								
