var data=[
                {value:335, name:'爱得利'},
                {value:310, name:'百爱吉'},
                {value:234, name:'红艺坊'},
                {value:135, name:'伊涵家居'},
                {value:1548, name:'优思居'}
            ];
var name = ['爱得利','百爱吉','红艺坊','伊涵家居','优思居'];

var Attribute_types = '品牌';
option = {
    title : {
        text: '热门属性',
        subtext: Attribute_types,
        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data:name
    },
    series : [
        {
            name: Attribute_types,
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:data,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
