<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../common/base.jsp" %>
								<div class="row">
									<div class="col-xs-12">
									
										<div class="input-group" style="width: 300px">
											<input type="text" class="form-control" name="keywords" placeholder="Look within results" />
											<div class="input-group-btn">
												<button type="button" class="btn btn-default no-border btn-sm">
													<i class="ace-icon fa fa-search icon-on-right bigger-110"></i>
												</button>
											</div>
										</div>
										
										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div >
											<table id="dynamic-table" class="table table-striped table-bordered table-hover" style="width: 50%;margin:auto;">
												<thead>
													<tr>
														<th>业务系统名称</th>
														<th>占用频段</th>
													</tr>
												</thead>

												<tbody>
													<tr>
														<td>
															固定业务
														</td>
														<td>87-108MHz</td>
													</tr>
													<tr>
														<td>
															水上移动业务
														</td>
														<td>108-137MHz</td>
													</tr>
													<tr>
														<td style="vertical-align: middle;">
															航空移动业务
														</td>
														<td><p>140-150MHz</p><p>351-356MHz</p><p>361-366MHz</p><p>336-344MHz</p></td>
													</tr>
													<tr>
														<td style="vertical-align: middle;">
															广播业务
														</td>
														<td><p>450-470MHz</p><p>885-889MHz</p><p>930-934MHz</p></td>
													</tr>
													<tr>
														<td style="vertical-align: middle;">
															卫星固定业务
														</td>
														<td><p>372-376MHz</p><p>382-386MHz</p></td>
													</tr>
													<tr>
														<td style="vertical-align: middle;">
															卫星固定业务
														</td>
														<td><p>350MHz-367MHz</p></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>

							
								
