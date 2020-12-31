// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myLineChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["00시", "01시", "02시", "03시", "04시", "05시"
    		, "06시", "07시", "08시", "09시", "10시", "11시"
    		, "12시", "13시", "14시", "15시", "16시", "17시"
    		, "18시", "19시", "20시", "21시", "22시", "23시"],
    datasets: [{
      label: "매출액",
      backgroundColor: "rgba(2,117,216,1)",
      borderColor: "rgba(2,117,216,1)",
      data: [4215, 5312, 6251, 7841, 9821, 14984,23411, 9821, 9821, 9821, 15314, 74521, 9821, 35662, 26635, 13642, 76371, 82345, 9821, 51123, 41412, 11111, 45321, 9821],
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'hour'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 24
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          //max: 15000,
          maxTicksLimit: 5
        },
        gridLines: {
          display: true
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
