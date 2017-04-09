draw = function (chartType, essentials, bills, transport, kids, totalExp) {

    if (essentials === 0 && bills === 0 && transport === 0 && kids === 0) {
       
        document.getElementById("chartPlaceholder").style.display = "none";
        document.getElementById("noDataPlaceholder").textContent = "Not enough data to draw chart";
    } else {
        var chart = new CanvasJS.Chart("chartContainer", {
            backgroundColor: "rgba(160, 32, 240, 0)",
            title: {
                fontColor: "#fff",
                text: "Total Expenses: £" + totalExp,
            },
            animationEnabled: true, //disable here

            data: [
        {
            
            type: chartType,
            radius: "100%",
            dataPoints: [
                    { label: "Essentials", y: parseFloat(essentials), indexLabelFontColor: "#fff" },
                    { label: "Bills", y: parseFloat(bills), indexLabelFontColor: "#fff" },
                    { label: "Transport", y: parseFloat(transport), indexLabelFontColor: "#fff" },
                    { label: "kids", y: parseFloat(kids), indexLabelFontColor: "#fff" }
                   

            ]
        }
            ]
        });

        chart.render();
    }

}

