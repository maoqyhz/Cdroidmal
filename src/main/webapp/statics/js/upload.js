var domyear = document.getElementById("uploadcontainer");
var myChartyear = echarts.init(domyear);
var appyear = {};
optionupload = null;
appyear.title = '';

var colors = ['#5793F3', '#CC0F26', '#675bba'];

var timedata = [];
var d = new Date("2018-06-07");

for(var k =0;k < 50;k++){
    var d2 = d-k*7*(1000*60*60*24);
    d2 = new Date(d2)
    var nextStartDate = d2.getFullYear()+"-"+(d2.getMonth()+1)+"-"+d2.getDate();
    timedata.push(nextStartDate)
}
timedata = timedata.reverse();


Math.seed = 5;
Math.seededRandom = function(max, min) {
    max = max || 1;
    min = min || 0;
    Math.seed = (Math.seed * 9301 + 49297) % 233280;
    var rnd = Math.seed / 233280.0;
    return min + rnd * (max - min);
};
var data1 = [];
for (var j= 0; j<50; j++) {
    data1.push(Math.floor(Math.seededRandom()*50));
}
var shufft1=[]
var shufft2=[]
Math.seed = 4;
var data2 = [];
for (var j= 0; j<50; j++) {
    // shufft1.push(Math.seededRandom ())
    var s = Math.floor(Math.seededRandom()*25);
    var shufft = data1[j] - s;
    if(shufft > 0){
        data2.push(shufft)
    }else{
        data2.push(0);
    }

}
var data3 = [];
Math.seed = 3;
for (var j= 0; j<365; j++) {
    shufft2.push(Math.seededRandom ())
}
//
// optionupload = {
//     title: {
//         text: ''
//     },
//     tooltip : {
//         trigger: 'axis',
//         axisPointer: {
//             type: 'cross',
//             label: {
//                 backgroundColor: '#6a7985'
//             }
//         }
//     },
//     legend: {
//         data:['上传数量','恶意数量']
//     },
//     toolbox: {
//         feature: {
//             saveAsImage: {}
//         }
//     },
//     grid: {
//         left: '3%',
//         right: '4%',
//         bottom: '3%',
//         containLabel: true
//     },
//     xAxis : [
//         {
//             type : 'category',
//             boundaryGap : false,
//             data : timedata//['2018-06-01','2018-06-02','2018-06-03','2018-06-04','2018-06-05','2018-06-06','2018-06-07']
//         }
//     ],
//     yAxis : [
//         {
//             type : 'value'
//         }
//     ],
//     series : [
//         {
//             name:'上传数量',
//             type:'line',
//             stack: '总量',
//             areaStyle: {normal: {}},
//             data:data1//[120, 132, 101, 134, 90, 230, 210]
//         },
//         {
//             name:'恶意数量',
//             type:'line',
//             stack: '总量',
//             areaStyle: {normal: {}},
//             data:data2//[150, 232, 201, 154, 190, 330, 410]
//         }
//     ]
// };

optionupload = {
    color: colors,

    tooltip: {
        trigger: 'none',
        axisPointer: {
            type: 'cross'
        }
    },
    legend: {
        data:['上传数量', '恶意数量']
    },
    grid: {
        top: 70,
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
                        return '恶意数量  ' + params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: timedata//["2016-1", "2016-2", "2016-3", "2016-4", "2016-5", "2016-6", "2016-7", "2016-8", "2016-9", "2016-10", "2016-11", "2016-12"]
        },
        {
            type: 'category',
            axisTick: {
                alignWithLabel: true
            },
            axisLine: {
                onZero: false,
                lineStyle: {
                    color: colors[0]
                }
            },
            axisPointer: {
                label: {
                    formatter: function (params) {
                        return '上传数量  ' + params.value
                            + (params.seriesData.length ? '：' + params.seriesData[0].data : '');
                    }
                }
            },
            data: timedata//["2015-1", "2015-2", "2015-3", "2015-4", "2015-5", "2015-6", "2015-7", "2015-8", "2015-9", "2015-10", "2015-11", "2015-12"]
        }
    ],
    yAxis: [
        {
            type: 'value'
        }
    ],
    series: [
        {
            name:'2015 降水量',
            type:'line',
            xAxisIndex: 1,
            smooth: true,
            data: data1//[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3]
        },
        {
            name:'2016 降水量',
            type:'line',
            smooth: true,
            data: data2//[3.9, 5.9, 11.1, 18.7, 48.3, 69.2, 231.6, 46.6, 55.4, 18.4, 10.3, 0.7]
        }
    ]
};

if (optionupload && typeof optionupload === "object") {
    myChartyear.setOption(optionupload, true);
}