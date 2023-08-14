import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'Result.dart';

class Expandeded extends StatefulWidget {


  @override
  State<Expandeded> createState() => _Expandeded();
}
class _Expandeded extends State<Expandeded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PA-1 expanded"),),
      body: SingleChildScrollView(
        child: Container(
          height: 1000,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),

          ),
 child: Container(

   height: 200,
   width: 400,
   decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(15),
         color: Colors.grey.shade600

   ),
   child: SingleChildScrollView(
     child: Column(
         children: [
           Container(
             child: Column(
               children: [
                 Container(
                   margin: EdgeInsets.only(top: 10,left: 10,right: 10),

                   height: 40,
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
                         Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MyHomePage()));
                         },
                         child: Icon(Icons.keyboard_arrow_up,color: Colors.blue,size:35,),)
                     ],
                   ),

                 ),
                 SafeArea(child: Container(
                     margin: EdgeInsets.only(left: 10,right: 10),

                     height: 160,
                     width: 400,
                     decoration: BoxDecoration(
                         // borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight:  Radius.circular(15)),
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
                 ),
                 Container( margin: EdgeInsets.only(left: 10,right: 10),
                   height: 330,
                   width: 400,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.only(bottomLeft:  Radius.circular(15),bottomRight:  Radius.circular(15)),
                     color: Colors.white
                   ),
                   child: Column(
                     children: [
                       SizedBox(height: 15,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                           Text("Subject",style: TextStyle(fontWeight: FontWeight.bold),),
                           Text("Marks",style: TextStyle(fontWeight: FontWeight.bold),),
                           Text("Grade",style: TextStyle(fontWeight: FontWeight.bold),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Container(
                    margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                           borderRadius: BorderRadius.circular(10),

                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),
                       SizedBox(height: 5,),
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),
                       SizedBox(height: 5,),
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),
                       SizedBox(height: 5,),
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),
                       SizedBox(height: 5,),
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),
                       SizedBox(height: 5,),
                       Container(
                         margin: EdgeInsets.only(left: 5,right: 5),
                         height: 40,
                         width: 400,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(width: 2,color: Colors.grey.shade300),
                         ),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Text("English"),
                             Text("12/20"),
                             Text("C1"),
                           ],
                         ),

                       ),



                     ],
                   ),
                 )
               ],
             ),
           ),
           SizedBox(height: 10,),
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
         ],
     ),
   ),
 ),

        ),
      ),

    );
  }

  }
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double? y;
}