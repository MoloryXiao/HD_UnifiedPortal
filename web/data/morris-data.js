$(function() {
    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "正教授",
            value: 50
        }, {
            label: "副教授",
            value: 180
        }, {
            label: "讲师",
            value: 180
        }, {
            label: "实验员",
            value: 150
        }, {
            label: "辅导员",
            value: 150
        }, {
            label: "助教",
            value: 138
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });
    
});
