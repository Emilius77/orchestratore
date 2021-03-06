<%@page contentType="text/html"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:template>

	
		<section class="content-header">
			<h1>Gestione Calendario</h1>
		</section>

		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box box-warning">
						<div class="box-header with-border">
							<h3 class="box-title">Info</h3>
						</div>
			              <div class="box-body">
			              	<div class="row">
								<div class="col-md-10">
           	                  		<label for="denomNuovoCal">Denominazione nuovo calendario:</label><br/>
					                <div class="form-group">
									  <select id="select_elenco_calendari" class="form-control select2">
									  	<option></option>
									  </select>
									</div>
					            </div>
								<div class="col-md-2">
				                	<div class="form-group">
								  		<a id="id_button_elimina_calendario" type="button" class="btn btn-danger" style="margin-top: 25px;"><i class="fa fa-trash-o"></i> Elimina</a>
								  	</div>
								</div>
							</div>					
			            </div>
	            	</div>
	            </div>
	        </div>

			<div class="row">
				<div class="col-md-12">
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Milestones</h3>
						</div>
						<div class="box-body">
							<div class="table-responsive">
								<table id="tableNuovoCalendario" class="table no-margin" style="margin-bottom: 110px !important">
									<thead>
										<tr role="row">
											<th style="text-align: center">Opz.</th>
											<th style="text-align: center">#</th>
											<th style="text-align: center">Milestones</th>
											<th style="text-align: center">Data cut-off</th>
											<th style="text-align: center">Ora cut-off</th>
											<th style="text-align: center">TAG</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											
											<td style="text-align: center">
											    <a style="cursor: pointer;" onclick="eliminaRiga()" id="buttonToDeleteRiga0" data-toggle="tooltip" title="Elimina" data-placement="left"><i style="color:red" class="fa fa-trash-o"></i></a>
											    <a style="margin-left: 15px; cursor: pointer;" onclick="addRiga()" id="buttonToAddRiga0" data-toggle="tooltip" title="Aggiungi" data-placement="bottom"><i style="color:green" class="fa fa-plus-circle"></i></a>
											</td>
											
											<td style="text-align: center">1</td>

											<td>
								              <div class="form-group">
								                <select id="milestoneNuovoCal0" class="form-control select2" style="width: 100%;">
								                  <option></option>
								                  <option>Milestone 4</option>
								                  <option>Milestone 4 3</option>
								                  <option>Milestone 4 2</option>
								                  <option>Milestone 4 1</option>
								                </select>
								              </div>
											</td>
											
											<td>
									        	<div class="form-group">
									                <div class="input-group">
									                  <div class="input-group-addon">
									                    <i class="fa fa-calendar"></i>
									                  </div>
									                  <input id="dataNuovoCal0" onkeydown="return false" type="text" placeholder="Data" class="form-control pull-right datepicker">
									                </div>
									            </div>
								            </td>
								            
											<td>
												<div class="bootstrap-timepicker">
									                <div class="form-group">
									                  <div class="input-group">
									                  	<div class="input-group-addon">
									                    	<i class="fa fa-clock-o"></i>
									                    </div>
									                    <input id="oraNuovoCal0" placeholder="Ora" type="text" class="form-control timepicker">
									                  </div>
									                </div>
									            </div>
											</td>
											
											<td>
												<input type="text" class="form-control" id="tagNuovoCal0" placeholder="TAG">
											</td>
																						
										</tr>
									</tbody>
								</table>
							</div>
							<a id="id_button_inserisci_calendario" type="button" class="btn btn-success"><i class="fa fa-check"></i> Inserisci</a>							
						</div>
					</div>
				</div>
			</div>
			
		</section>

</t:template>