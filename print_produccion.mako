<html>
    <head>
        <style type="text/css">
            ${css}

           
              .table_operations{
                 border:0px solid #086A87; 
                 text-align:center; 
                 padding:0px;
                 font-size:15px; 
               }

                               
              h1{
                  font-family:"Times New Roman", Georgia, Serif;color: #086A87; 
                    text-align:right; 
                    font-size:16px; 
                    font-weight:bold;"
              }
              h2{
                color:#086A87;
                font-size:15px;
                font-family:'Brodway';
              }
              h3{
                color:#086A87;
                font-size:14px;
                font-family:'Brodway';
              } 
              h4{
                color:#086A87;
                font-size:15px;
                font-family:'Brodway';
              } 
              .text{
                font-size:16px;
                font-family:'Brodway';
              }   
              table.table{
                position:relative;

              }  
              hr{
                background-color:black;
                line-height:3px;
                width:90%;

              } 
              hr.lol{
                background-color:black;
                line-height:3px;
                margin-right:50%;
                margin-left: 10%;
                

              }
              td.end{
                 color:#086A87;
                 margin-left:50%;
                 margin-right:50%;
                 text-align:left; 
                 font-size:10px;
                 font-family:Brodway;
                 padding:5px;                     
                
              }
              td.repo{
                font-size:8px;
                color:black;
                padding: 5px;
              }
              

              #footer{
                width: 100%;
                height: 81px;
                position: absolute;
                bottom: 0;
                left: 0;
              }

        </style>
    </head>
    <body>
		%for o in objects :
            <% setLang(user.lang) %>          
           <div class="contenedor_principal">
                <div class="contenedor_contenido">
                  <div class="act_as_table">
                        <div class="act_as_row">
                            <div class="act_as_cell" style="width:20%;">
                                <div style="position: relative;">
                                    <div style="position: absolute; top: 10px; bottom: 0px;">
                                        ${helper.embed_image('jpeg',str(o.company_id.logo),130)}                         
                                    </div>                               
                                </div>
                            </div>
                            <div class="act_as_cell" style="width:45%">
                                <div class="act_as_table">
                                    <div class="act_as_row" style="text-align:left; font-weight:bold;">
                                        <div class="act_as_cell" style="padding-top:0px; font-size:15px;">
                                            
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="act_as_cell" style="border:0px solid black;">
                                <div class="act_as_table">
                                    <div class="act_as_row">
                                        <div class="act_as_cell" >
                                            <h1><b>Orden De Trabajo produccion</b></h1>
                                            <hr class="lol">
                                        </div>
                                    </div> 

                                    <div class="act_as_row">
                                        <div class="act_as_cell" style="text-align:right;">                                            
                                          <b>Fecha Limite de Garantia</b> ${o.fecha_alta}
                                        </div>
                                    </div> 
                                    <div class="act_as_row">
                                        <div class="act_as_cell" style="text-align:right;">
                                            <b>Fecha de Alta </b>${o.guarantee_limit}<br> <br>                                            
                                        </div>
                                    </div>  
                                    <br>                                             
                                </div>
                            </div>                             
                        </div>
                    </div>  
                        <div class="act_as_row">
                        <div class="act_as_cell" style="text-align:left; font-size:15px;">
                         
                           <h3><b>Orden de Servicio N: ${o.name} </b></h3>
        
                        </div>
                      </div>
                        <div class="act_as_row">
                        <div class="act_as_cell" style="text-align:left; font-size:15px; with:20%;">
                               
	                       <h4><b>Cliente </b></h4> 
                              <b class="text">Atencion:</b> ${o.partner_id.name} <br>
                               %if o.partner_id.division != 0:
                               <b>Division:</b> ${o.partner_id.division}<br>
                               %endif
                               %if o.partner_id.zona != 0:
                               <b>Zona:</b> ${o.partner_id.zona}<br>
                               %endif
                               %if o.partner_id.city_id.name != 0:
                               <b>Area:</b> ${o.partner_id.city_id.name}<br>
                               %endif
                                          
                        </div>
                        <hr>
                      	
                        <div class="act_as_cell" style="text-align:left; font-size:15px; with:30%;">

                           <h4><b style="text-align:left;">Vehículo</b></h4>
                           <br>
	                       <b >Marca H:</b> ${o.modelo_id.marcamc or ''}
                              <br>
                              <b>Modelo:</b> ${o.modelo_id.modelomc or ''}
                              <br>
                               %if o.modelo_id.noseriemceh != 0:
                              <b>Numero de Serie:</b> ${o.modelo_id.noseriemceh}
                              <br>
                              %endif
                              <b>Horometro:</b> ${o.modelo_id.horometromc or ''}
                        </div>
                          <div class="act_as_cell" style="text-align:left; font-size:15px; with:50%;">

                           <h4><b style="text-align:left;">Equipo Hidraulico:</b></h4>
                           <br>
	                      <b>Marca:</b> ${o.modelo_id.model_id.name or ''}
                              <br>
                              <b> Modelo:</b>${o.modelo_id.modelomc or ''}
                              <br>
                              <b> No Placas:</b> ${o.modelo_id.license_plate or ''}
                              <br>
                              <b>Numero de Serie:</b> ${o.modelo_id.noseriemc or ''}
                              <br>
                              <b> lectura de Odometro:</b> ${o.modelo_id.odometer or ''}
                              <br>
			               
                        </div>
                   </div>

                        
                         <table  style="font-size:9px;margin: 45px;width: 480px; text-align: left; border-collapse: collapse;">
                          <tr style="background: #d0dafd; color: #339; ">
                         
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Producto</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Cantidad</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Descripcion</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">NS</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">NF</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">F.rdo</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Tll</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">h/h</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">F.REV1</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Emp<b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">F.rzo</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Emp</b></td>
                          <td style="    font-size: 13px;     font-weight: normal;     padding: 8px;     background: #b9c9fe;
    border-top: 4px solid #aabcfe;    border-bottom: 1px solid #fff; color: #039; "><b class="text">Nota</b></td>
                          </tr>

                         

                          %for l in o.fees_lines:
                             <tr style="background: #d0dafd; color: #339;" >
                             
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"> ${l.product_id.name} </td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;" > ${l.product_uom_qty} </td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"> ${l.name}</td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"> </td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"> </td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                 <td style="padding: 8px;background: #e8edff; border-bottom: 1px solid #fff;
    color: #669; border-top: 1px solid transparent;"></td>
                                
                             </tr>
                           %endfor
                            <hr>

                         </table>
                        
                         
                        </div>
                     </div>

                   </div>
                    <div class="act_as_table">
                        <div class="act_as_row">
                            <div class="act_as_cell" style="width:35%;">
                                <div style="position: relative;">
                                    <div style="position: relative; top: 10px; bottom: 0px;">
                                        <font size="1" color="black"><b>Notas:</b></font>
					<p>${o.produccion_notas or ''}</p>                        
                                    </div>                               
                                </div>
                            </div>
                            <div class="act_as_cell" style="width:28%">
                                <div class="act_as_table">
                                    <div class="act_as_row" style="text-align:right;">
                                        <div class="act_as_cell">
                                            <font size="1" color="black"><b>TALLER</b><br><b> 1.Mecanico</b><br>
                                            <b>2.Electricidad</b><br>
                                            <b>3.Soldadura</b><br>
                                            <b>4.Maquinado</b><br>
                                            <b>5.Pintura F/U</b><br>
                                            <b>Acabado/Lavado</b><br></font>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                            
                            <div class="act_as_row">
                               <div class="act_as_cell" style="border:0px solid black;">
                                <div class="act_as_table">
                                    <div class="act_as_row">
                                        <div class="act_as_cell" style="text-aling=right;">
                                           <font size="1" color="black"><b>Total:</b></font>
                                           
                                        </div>
                                    </div> 
                                </div>
                                   
                                  
                                    <div class="act_as_row">
                                        <div class="act_as_cell" style="text-align:center;">                                           
                                           <font size="1" color="black"><b> Fecha Inicial: </b> ${o.fecha_alta}</font>
                                        </div>
                                    </div> 
                                    <div class="act_as_row">
                                        <div class="act_as_cell" style="text-align:center;">
                                            <font size="1" color="black"><b> Fecha Final: </b>${o.guarantee_limit}
                                            </font>
                                            <br> 
                                            <br>                                            
                                        </div>
                                    
                                  </div>
                                                                                  
                                </div>
                            </div> 
                                   
                                   
                        </div>
                    </div>  

                </div>
                        
                                  <table>
                                    <tr>
                                    <td class="end"><b><h2>REALIZACION DE ACTIVIDADES</h2>
                                    </b></td>
                                    </tr>
				    <tr>
					<td><b>Notas Reporte:</b></td>
				        <td>${o.internal_notes or ''}</td>
				    </tr>
                                    <br>
			            <br>
                                    <hr>
                                    <tr>
                                      <td class="Repo"><b>Reporta Termino de Unidad:</b> ${o.produccion_re_ter_unidad.name or ''}</td>
                                    </tr>
                                    </table>
               
                 <table>
                  <tr>
                   <td>
                    <%! from time import strftime as time %>
                        <b> <i>Fecha de Impresion </b> </i>${"%d de %B" | time}
                    </td>
                     <br>
                    <td align="right">
                       <p align="right"> Hora de impresion ${"%P hrs" | time} </p>
                    </td>
                  </tr>
                </table>
            </div> 

        %endfor
    </body> 
</html>    

