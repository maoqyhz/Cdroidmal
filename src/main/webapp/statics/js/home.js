var domhome = document.getElementById("homecontainer");
var myCharthome = echarts.init(domhome,'light');
var apphome = {};
optionhome = null;

apphome.title = '';

optionhome = {
    title: {
        text: '',
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: {
            type: 'shadow'
        }
    },
    legend: {
        data: ['2016年', '2017年']
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: {
        type: 'value',
        boundaryGap: [0, 0.01]
    },
    yAxis: {
        type: 'category',
        data: ['RiskTool','Trojan-SMS','AdWare','Trojan-Dropper','Trojan-Spy','Trojan','Trojan-Banker','Backdoor','Trojan-Downloader','Trojan-Ransom','other']
    },
    series: [
        {
            name: '2017年',
            type: 'bar',
            data: [43.2,11.33,13.23,11.10,5.06,5.48,2.10,0.93,1.48,4.26,1.68]
        },
        {
            name: '2016年',
            type: 'bar',
            data: [29.24,23.98,21.82,8.73,5.96,4.56,1.68,1.39,1.08,0.66,0.86]
        }
    ]
};

if (optionhome && typeof optionhome === "object") {
    myCharthome.setOption(optionhome, true);
}