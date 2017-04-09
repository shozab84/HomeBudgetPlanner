using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    double Income, RentOrMortgage, FoodAndGroceries, Electricity, Gas, Water, CouncilTax, Mobile, PhoneBroadband,
           Digitaltv, TvLicence, HomeInsurance, ServiceCharge, Fuel, CarInsurance, RoadTaxMOT, CarMaintenance,
           Parking, PublicTransport, ChildCare;


    protected void Page_Load(object sender, EventArgs e)
    {
        

    }


    protected void CalculateButton_Click1(object sender, EventArgs e)
    {
        CalculateExpenses();
        //ClientScript.RegisterStartupScript(GetType(), "draw1", "drawchart()", true);
        //ClientScript.RegisterOnSubmitStatement(GetType(), "draw1", "drawchart()");
        //ClientScript.RegisterStartupScript(GetType(), "draw1", "drawchart()", true);

    }

    

    private double getUserData(TextBox txtBoxValue)// we have created a function getUserData that reads whatever user enters in a text boxes 
    {
        if (!string.IsNullOrWhiteSpace(txtBoxValue.Text))
        {
            return double.Parse(txtBoxValue.Text);
        }
        else
        { 
            return 0;
        }
    }

    private void CalculateExpenses()// this is our function to calculate expenses
    {
        double bills, essentials, transport, kids, totalExp;
        string chartType = "'doughnut'";
        Type Expenses = GetType();

        Income = getUserData(IncomeTextBox);// passing value or parameter, here i have passed id of Income text box
        RentOrMortgage = getUserData(RentOrMortgageTextBox);
        FoodAndGroceries = getUserData(FoodAndGroceriesTextBox);
        Electricity = getUserData(ElectricityTextBox);
        Gas = getUserData(GasTextBox);
        Water = getUserData(WaterTextBox);
        CouncilTax = getUserData(CouncilTaxTextBox);
        Mobile = getUserData(MobileTextBox);
        PhoneBroadband = getUserData(PhoneBroadbandTextBox);
        Digitaltv = getUserData(DigitaltvTextBox);
        TvLicence = getUserData(TvLicenceTextBox);
        HomeInsurance = getUserData(HomeInsuranceTextBox);
        ServiceCharge = getUserData(ServiceChargeTextBox);
        Fuel = getUserData(FuelTextBox);
        CarInsurance = getUserData(CarInsuranceTextBox);
        RoadTaxMOT = getUserData(RoadTaxMOTTextBox);
        CarMaintenance = getUserData(CarMaintenanceTextBox);
        Parking = getUserData(ParkingTextBox);
        PublicTransport = getUserData(PublicTransportTextBox);
        ChildCare = getUserData(ChildCareTextBox);

        essentials = RentOrMortgage + FoodAndGroceries;
        bills = Electricity + Gas + Water + CouncilTax + Mobile + PhoneBroadband + Digitaltv +
                TvLicence + HomeInsurance + ServiceCharge;
        transport = Fuel + CarInsurance + RoadTaxMOT + CarMaintenance + Parking + PublicTransport;
        kids = ChildCare;
        totalExp = essentials + bills + transport + kids;

        System.Text.StringBuilder builder = new System.Text.StringBuilder();
        builder.Append("draw(" + chartType + "," + essentials + "," + bills + "," + transport + "," + kids + "," + totalExp + ");");

        ClientScript.RegisterStartupScript(GetType(), "draw", builder.ToString(),true);
        

    }





    
}

