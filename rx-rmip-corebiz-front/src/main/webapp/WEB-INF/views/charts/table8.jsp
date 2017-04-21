<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../../common/base.jsp" %>
								<div class="row">
									<div class="col-xs-12">
									
										<div class="input-group" style="width: 300px">
											<input type="text" value="时间段" class="form-control" name="keywords" placeholder="Look within results" />
											<div class="input-group-btn">
												<button type="button" class="btn btn-default no-border btn-sm">
													<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
												</button>
											</div>
										</div>
										
										<div style="text-align: center;">
											<button class="btn btn-lg btn-info">
													新申 8
											</button>
											<button class="btn btn-lg btn-success">
													续用 64
													
											</button>
											<button class="btn btn-lg btn-danger">
													
													注销 10
													
											</button> 
											<button class="btn btn-lg btn-warning">
													
													临时指配 2
													
											</button>
										</div>
										
										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>审批类型</th>
														<th>单位名称</th>
														<th>业务类型</th>
														<th class="hidden-480">频率数量</th>
													</tr>
												</thead>

												<tbody>
													<tr>

														<td>
															频率新申
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">****</td>
														
													</tr>
													<tr>

														<td>
															频率续用
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
													
													<tr>

														<td>
															频率注销
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
													<tr>

														<td>
															临时指配
														</td>
														<td>上海移动</td>
														<td>陆地移动业务</td>
														<td class="hidden-480">******</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								
								
