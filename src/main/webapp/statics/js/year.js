var domyear = document.getElementById("yearcontainer");
var myChartyear = echarts.init(domyear);
var appyear = {};
optionyear = null;
appyear.title = '';

var colors = ['#5793f3', '#d14a61', '#675bba'];


optionyear = {
    color: colors,

    tooltip: {
        trigger: 'none',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['恶意APP增量']
    },
    grid: {
        top: 10,
        bottom: 50
    },
    xAxis: [
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[1]
                }
            },
            axisPointer: {
                label: {
                    formatter: function (params) {
                        return '恶意软件增量  ' + params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: ["2012年","2013年","2014年","2015年","2016年","2017年"]
        }
    ],
    yAxis: [
        {
            type: 'value'
        }
    ],
    series: [
        {
            name:'年增量',
            type:'line',
            smooth: true,
            data: [12.4,67.1,326,1874,1403.3,1273.6]
        }
    ]
};


if (optionyear && typeof optionyear === "object") {
    myChartyear.setOption(optionyear, true);
}