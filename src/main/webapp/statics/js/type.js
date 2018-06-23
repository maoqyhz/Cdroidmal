var domtype = document.getElementById("typecontainer");
var myChart1 = echarts.init(domtype,'light');

var apps = {};
option1 = null;

apps.title = '环形图';

option1 = {
    tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b}: {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        x: 'left',
        data:['资源耗费','恶意扣款','隐私窃取','流氓行为','远程控制','其他']
    },
    series: [
        {
            name:'恶意类型',
            type:'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '14',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data:[
                {value:74.2, name:'资源耗费',color:''},
                {value:16.5, name:'恶意扣款'},
                {value:6.1, name:'隐私窃取'},
                {value:2.3, name:'流氓行为'},
                {value:0.9, name:'远程控制'},
                {value:0.05, name:'其他'}

            ]
        }
    ]
};

if (option1 && typeof option1 === "object") {
    myChart1.setOption(option1, true);
}
