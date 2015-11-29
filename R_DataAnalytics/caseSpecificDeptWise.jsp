<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Reporting DashBoard</title>
    <meta charset="utf-8" />
    <link href="c3.min.css" rel="stylesheet" />
    <script src="d3.min.js"></script>
    <script src="c3.min.js"></script>
        <script src="jquery-2.1.4.min.js"></script>
    
    
</head>
<body>
    <div id="chart" style="width:410px; height:315px;"></div>
    <script>
	/*var data = {
            data1: [30, 20, 50, 40, 60, 50],
            data2: [200, 130, 90, 240, 130, 220],
            data3: [300, 200, 160, 400, 250, 250]
        }; */
        var modData = [];
	data = {
		    "results": [
		                {
		                    "param": "Consultant Score",
		                    "val": [
		                        '1',
		                        '2',
		                        '3',
		                        '4',
		                        '2'
		                    ]
		                },
		                {
		                    "param": "Parent Score",
		                    "val": [
		                        '2',
		                        3,
		                        5,
		                        5,
		                        4
		                    ]
		                },
		                {
		                    "param": "Mean Score",
		                    "val": [
		                        1.5,
		                        2.5,
		                        4,
		                        4.5,
		                        3
		                    ]
		                },
		                {
		                    "param": "x",
		                    "val": [
								'Speech', 
								'Cognitive', 
								'Analytical', 
								'Dyslexic', 
								'Yoga'
		                    ]
		                }

		            ]
		        };
	data = {"results":[
	                   {"val":1,"param":"Medicine"},
	                   {"val":1,"param":"Yoga"},
	                   {"val":1,"param":"External Therapies"},
	                   {"val":2,"param":"Occupational Therapy"},
	                   {"val":1,"param":"Special Education"}
	                   ]
	};

    data.results.forEach(function(d, i) {
    	//alert(d.param);
        var item = [d.param];

          item.push(d.val);

        modData.push(item);
      });
	
	//alert(modData)
      var chart = c3.generate({
        data: {
          columns: modData
        }
      });
      //alert('test')
    	var chartType = 3;
    	if(chartType == 0){
    		caseSpecificDeptWise();
    	} else if (chartType == 1){
    		caseSpecificTimeWise();
    	} else if (chartType == 2){
    		caseSpecificTimeDocWise();
    	} else if (chartType == 3){
    		departmentDrillDownDonut();
    	} else if (chartType == 4){
    		aggregateBarChart();
    	}
    	


    	function caseSpecificDeptWise() {
        var chart = c3.generate({
            data: {
            	x : 'x',
            	columns : modData,
            /*    columns: [
                    ['Consultant Score', 3, 2, 1, 4, 1, 2],
                    ['Parent Score', 5, 2, 3, 4, 2, 3],
                    ['Mean Score', 4, 2, 2, 4, 1.5, 2.5],
                    ['x', 'Speech', 'Cognitive', 'Analytical', 'Dyslexic', 'Emotional'],
                ], */
                axes: {
                	'Parent Score': 'y2' // ADD
                  }
            },
            axis: {
            	x: {
                    type: 'category' // this needed to load string x value
                },
                y: {
                  label: { // ADD
                    text: 'Score',
                    position: 'outer-middle'
                  }
                },
               /* y2: {
                  show: true,
                  label: { // ADD
                    text: 'Score',
                    position: 'outer-middle'
                  }
                } */
              }

        });
    	}
    	
    		function caseSpecificTimeWise() {
    			var chart = c3.generate({
    	            data: {
    	            	x : 'x',
    	                columns: [
    	                    ['Consultant Score', 3, 2, 1, 4, 1, 2],
    	                    ['Parent Score', 5, 2, 3, 4, 2, 3],
    	                    ['Mean Score', 4, 2, 2, 4, 1.5, 2.5],
    	                    ['x', 'Start', '3 Months', '6 Months', '9 Months', '12 Months'],
    	                ],
    	                axes: {
    	                	'Parent Score': 'y2' // ADD
    	                  }
    	            },
    	            axis: {
    	            	x: {
    	                    type: 'category' // this needed to load string x value
    	                },
    	                y: {
    	                  label: { // ADD
    	                    text: 'Score',
    	                    position: 'outer-middle'
    	                  }
    	                },
    	             /*   y2: {
    	                  show: true,
    	                  label: { // ADD
    	                    text: 'Score',
    	                    position: 'outer-middle'
    	                  }
    	                } */
    	              }

    	        });
    		}
    	
    		function caseSpecificTimeDocWise() {
    			var chart = c3.generate({
    	            data: {
    	            	x : 'x',
    	                columns: [
    	                    ['Consultant Score', 3, 2, 1, 4, 1, 2],
    	                    ['x', 'Start', '3 Months', '6 Months', '9 Months', '12 Months'],
    	                ],
    	                axes: {
    	                	'Parent Score': 'y2' // ADD
    	                  }
    	            },
    	            axis: {
    	            	x: {
    	                    type: 'category' // this needed to load string x value
    	                },
    	                y: {
    	                  label: { // ADD
    	                    text: 'Score',
    	                    position: 'outer-middle'
    	                  }
    	                },
    	              /*  y2: {
    	                  show: true,
    	                  label: { // ADD
    	                    text: 'Score',
    	                    position: 'outer-middle'
    	                  }
    	                } */
    	              }

    	        });
    		}
    		
    		function departmentDrillDownDonut(){
    			var chart = c3.generate({
    			    data: {
    			     /*    columns: [
    			            ['Speech', 30],
    			            ['Cognitive', 120],
    			            ['Analytical', 30],
    			            ['Dyslexic', 120],
    			            ['Emotional', 30]
    			        ], */
    			        
    			        columns : modData,
       			        type : 'donut',
    			        onclick: function (d, i) { console.log("onclick", d, i); },
    			        onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    			        onmouseout: function (d, i) { console.log("onmouseout", d, i); }
    			    },
    			    donut: {
    			        title: ""
    			    }
    			});
    		}
    	function aggregateBarChart(){
    		var chart = c3.generate({
    		    data: {
    		    	x : 'x',
    		        columns: [
      	                    ['x', 'Start', '3 Months', '6 Months', '9 Months', '12 Months'],
    		             	['Speech', 3, 2, 5, 1, 2],
    			            ['Cognitive', 1, 2, 0, 4, 4],
    			            ['Analytical', 3, 3, 3 , 3, 5],
    			            ['Dyslexic', 1, 2, 3, 4, 5],
    			            ['Emotional', 0, 0, 3, 2, 3]
    		        ],
    		        type: 'bar'
    		    },
    		    bar: {
    		        width: {
    		            ratio: 0.5 // this makes bar width 50% of length between ticks
    		        }
    		        // or
    		        //width: 100 // this makes bar width 100px
    		    },
    		    axis: {
    		        x: {
    		            type: 'categorized' // this is needed to load string x value
    		        }
    		    }
    		});

    	}
    	
    	
    </script>
</body>
</html>