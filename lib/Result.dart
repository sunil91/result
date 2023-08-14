import 'package:flutter/material.dart';
import 'package:result/PA-1expanded.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _Result();
}
class _Result extends State<MyHomePage> {
  bool _counter = false;
 bool press=false;

 var margin=EdgeInsets.only(top: 200);

void Expand_Collapse(){
  if(!_counter){
    setState(() {
      margin=EdgeInsets.only(top: 0);
    });
    _counter=true;
  }
  else{
    setState(() {
      margin=EdgeInsets.only(top: 200);
    });
    _counter=false;
  }
}




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("line chart"),
      ),
      body: Container(
        margin: margin,
        height: 800,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade400
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [TextButton(
              style: ButtonStyle( ),
              child:            Icon(Icons.maximize),
            onPressed: (){
              Expand_Collapse();
            },),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade600

                  ),
                  child: Column(
                    children: [
                      Container(height: 40,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            color: Colors.white

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("    PA-1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Expandeded()));
                              },
                              child: Icon(Icons.keyboard_arrow_down,color: Colors.blue,size:35,),)
                          ],
                        ),

                      ),
                      SafeArea(child: Container(
                          height: 160,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight:  Radius.circular(15)),
                              color: Colors.grey.shade300

                          ),
                          child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              primaryYAxis: NumericAxis(
                                  interval: 2,
                                  maximum: 20
                              ),


                              series: <ChartSeries>[
                                // Initialize line series
                                LineSeries<ChartData, String>(
                                    dataSource: [
                                      // Bind data source
                                      ChartData('English', 12),
                                      ChartData('Hindi', 11.5),
                                      ChartData('French', 13),
                                      ChartData('Math', 13.5),
                                      ChartData('Science', 14.5),
                                      ChartData('S Science', 16),
                                    ],

                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y, // Render the data label
                                    dataLabelSettings:DataLabelSettings(isVisible : true)
                                ),
                              ]
                          )
                      )
                      )
                    ],
                  ),
                ),
              ),


          SizedBox(height: 10),


              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade600

                  ),
                  child: Column(
                    children: [
                      Container(height: 40,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            color: Colors.white

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("    PA-2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>Expandeded()));
                              },
                              child: Icon(Icons.keyboard_arrow_down,color: Colors.blue,size:35,),)
                          ],
                        ),

                      ),
                      SafeArea(child: Container(
                          height: 160,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight:  Radius.circular(15)),
                              color: Colors.grey.shade300

                          ),
                          child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              primaryYAxis: NumericAxis(
                                interval: 2,
                                maximum: 20
                              ),

                              series: <ChartSeries>[
                                // Initialize line series
                                LineSeries<ChartData, String>(
                                    dataSource: [
                                      // Bind data source
                                      ChartData('English', 12),
                                      ChartData('Hindi', 11.5),
                                      ChartData('French', 13),
                                      ChartData('Math', 13.5),
                                      ChartData('Science', 14.5),
                                      ChartData('S Science', 16),
                                    ],

                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y, // Render the data label
                                    dataLabelSettings:DataLabelSettings(isVisible : true)
                                ),
                              ]
                          )
                      )
                      )
                    ],
                  ),
                ),
              ),



              SizedBox(height: 10),


              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade600

                  ),
                  child: Column(
                    children: [
                      Container(height: 40,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                            color: Colors.white

                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("    PA-2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            TextButton(
                              onPressed: (){},
                              child: Icon(Icons.keyboard_arrow_down,color: Colors.blue,size:35,),)
                          ],
                        ),

                      ),
                      SafeArea(child: Container(
                          height: 160,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight:  Radius.circular(15)),
                              color: Colors.grey.shade300

                          ),
                          child: SfCartesianChart(
                              primaryXAxis: CategoryAxis(),
                              primaryYAxis: NumericAxis(
                                  interval: 2,
                                  maximum: 20
                              ),

                              series: <ChartSeries>[
                                // Initialize line series
                                LineSeries<ChartData, String>(
                                    dataSource: [
                                      // Bind data source
                                      ChartData('English', 12),
                                      ChartData('Hindi', 11.5),
                                      ChartData('French', 13),
                                      ChartData('Math', 13.5),
                                      ChartData('Science', 14.5),
                                      ChartData('S Science', 16),
                                    ],

                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) => data.y, // Render the data label
                                    dataLabelSettings:DataLabelSettings(isVisible : true)
                                ),
                              ]
                          )
                      )
                      )
                    ],
                  ),
                ),
              ),








            ],
          ),
        ),
      )

    );
  }
}



class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}

