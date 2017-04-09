<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Styles/bootstrap.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Philosopher:400,700' rel='stylesheet' type='text/css' />
    <link href="Styles/Styles.css" rel="stylesheet" />
    <script src="Script/canvasjs.min.js"></script>
    <script src="Script/chartScript.js"></script>
    

   

    <title>Household budget Calculator</title>
</head>
<body>
        <div class ="container heading">
           <div class="model text-center">
               <%--<script type="text/javascript" >
                   alert("hello");
               </script> --%>
             <h1> Household Budget Planner</h1>
             <h3> Budget Planner puts you in control of your household spending and analyses your results to help you take control of your money.
                  Enter how much your Family earns and spend on Household, Travel, Food, Entertainment, Family and Friends every month.
             </h3>
           </div>
         </div>    
   
        <hr class="top"/>
        <form id="form2" runat="server" class="form-horizontal">   
            <div class="container content">
            <br />
             <div class="row">             
                     
                  <br />
                      <div class ="col-md-6">
                            <div class ="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <asp:Label ID="MonthlyIncomeLabel" runat="server" Text="Monthly Income (After Tax)"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="IncomeTextBox" runat="server" Text="" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                             </div>
                          
                          <br />
                          <div class ="row">
                              <div class ="col-md-4 col-md-offset-1">
                                  <h4>Essentials:</h4>
                              </div>
                          </div>    
                          
                                      
                            <br />   
                            <div class="row">
                                <div class ="col-md-4 col-md-offset-1">
                                    <asp:Label ID="RentOrMortgageLabel" runat="server" Text="Rent or Mortgage"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="RentOrMortgageTextBox" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                                </div>
                            </div>
                        
                            <br />
                            <div class="row">         
                                <div class ="col-md-4 col-md-offset-1">
                                     <asp:Label ID="FoodAndGroceriesLabel" runat="server" Text="Food and groceries" Font-Bold="False"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                <asp:TextBox ID="FoodAndGroceriesTextBox" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                                </div>
                            </div>
                            
                            <br />
                            <div class="row"> 
                                <div class ="col-md-4 col-md-offset-1">
                                    <h4>Bills:</h4>
                                </div>
                            </div>

                            <br />
                            <div class ="row">
                                <div class ="col-md-4 col-md-offset-1">
                                  <asp:Label ID="ElectricityLabel" runat="server" Text="Electricity"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                <asp:TextBox ID="ElectricityTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>  
                            
                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                   <asp:Label ID="GasLabel" runat="server" Text="Gas"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                <asp:TextBox ID="GasTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div> 
                             </div>

                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="WaterLabel" runat="server" Text="Water"></asp:Label>
                                </div>
                                <div class ="col-md-6">  
                                    <asp:TextBox ID="WaterTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>   
                            </div>  

                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                  <asp:Label ID="CouncilTaxLabel" runat="server" Text="Council Tax"></asp:Label>
                                </div>
                                <div class ="col-md-6">  
                                  <asp:TextBox ID="CouncilTaxTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>
                            
                            <br />
                            <div class ="row">
                            <div class="col-md-4 col-md-offset-1">
                                <asp:Label ID="MobileLabel" runat="server" Text="Mobile Phone(s)"></asp:Label>
                            </div>
                            <div class ="col-md-6">
                                <asp:TextBox ID="MobileTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                            </div>
                            </div>
                                                   
                            <br />
                             <div class ="row">
                                <div class="col-md-4 col-md-offset-1"> 
                                    <asp:Label ID="PhoneBroadbandLabel" runat="server" Text="Phone & Broadband "></asp:Label>
                                </div>
                                <div class ="col-md-6">                            
                                    <asp:TextBox ID="PhoneBroadbandTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                             </div>
                                                          
                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="DigitaltvLabel" runat="server" Text="Digital TV (e.g SKY/Virgin/TalkTalk/BT) "></asp:Label>
                                </div>
                                <div class ="col-md-6"> 
                                    <asp:TextBox ID="DigitaltvTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                             </div>


                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="TvLicenceLabel" runat="server" Text="TV Licence"></asp:Label>
                                </div>
                                <div class ="col-md-6"> 
                                    <asp:TextBox ID="TvLicenceTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>
                            
                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="HomeInsuranceLabel" runat="server" Text="Home Insurance"></asp:Label>
                                 </div>
                                 <div class ="col-md-6">
                                    <asp:TextBox ID="HomeInsuranceTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                 </div>
                            </div>
                            
                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="ServiceChargeLabel" runat="server" Text="Service Charge & ground rent (living in a Flat)"></asp:Label>
                                 </div>
                                 <div class ="col-md-6">
                                    <asp:TextBox ID="ServiceChargeTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                  </div>
                            </div>   
                            <br/>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <h4> Transport: </h4>
                                </div>
                            </div>
                            
                            
                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="FuelLabel" runat="server" Text="Fuel"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="FuelTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>
        
                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="CarInsuranceLabel" runat="server" Text="Car Insurance"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                     <asp:TextBox ID="CarInsuranceTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox> 
                                </div>
                            </div>
                            
                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                     <asp:Label ID="RoadTaxMOTLabel" runat="server" Text="Road Tax and MOT"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="RoadTaxMOTTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <div class="row">
                             <div class ="col-md-4 col-md-offset-1">
                                <asp:Label ID="CarMaintenanceLabel" runat="server" Text="Car Maintenance"></asp:Label>
                             </div>
                             <div class ="col-md-6">
                                <asp:TextBox ID="CarMaintenanceTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                             </div>
                            </div>

                            <br />
                            <div class ="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="ParkingLabel" runat="server" Text="Parking"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="ParkingTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>
                          
                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="PublicTransportLabel" runat="server" Text="Public Transport"></asp:Label>
                                </div>
                                <div class ="col-md-6">
                                    <asp:TextBox ID="PublicTransportTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>
                                
                          <br />
                          <div class="row">
                            <div class="col-md-4 col-md-offset-1">
                            <h4>Family and Kids:</h4>
                            </div>
                          </div>  
       
                          <br />
                           <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <asp:Label ID="ChildCareLabel" runat="server" Text="Childcare"></asp:Label>
                                </div>
                                <div class="col-md-6">
                                <asp:TextBox ID="ChildCareTextBox" runat="server" Width="100px" CssClass="form-control txtBox"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1"></div>
                                <div class="col-md-6">
                                <asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click1" CssClass="btn-primary" />
                                </div>
                             </div>
                            <br />
                          </div>
                          <div class ="col-md-6">
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <div id="chartContainer" style="height: 400px; width: 100%;">
                                        <div id="chartPlaceholder"></div>
                                        <div id="noDataPlaceholder" class="h1"></div>               
                                    </div>        
                                 </div>
                            </div>
                         </div>
                </div> 
             </div>              
      </form>  
    <div id="chartContainer1" style="height: 300px; width: 100%;"></div>
</body>
</html>
