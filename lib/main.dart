import 'package:basketball/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_state.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CounterCubit(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:PointCounter(),
      ),
    );
  }
}




class PointCounter extends StatelessWidget {
   PointCounter({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder: (context,state){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Points Counter",style:TextStyle(fontSize: 25.0) ,),
          centerTitle: true,
          backgroundColor: Colors.orange,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),bottomRight: Radius.circular(50.0))),
        ),
        body: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text("Team A",style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 3.0),),
                     Text("${BlocProvider.of<CounterCubit>(context).pointA}",style: const TextStyle(fontSize: 150.0 ,color: Colors.black),),
                    ElevatedButton(
                        onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoint("A", 1);
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 1 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                        onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoint("A", 2);

                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 2 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                        onPressed: (){
                      BlocProvider.of<CounterCubit>(context).addPoint("A", 3);

                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 3 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                  ],
                ),
                const SizedBox(
                  height: 350,
                  child:  VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,

                  ),
                ),
                Column(
                  children: [
                    const Text("Team B",style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 3.0),),
                     Text("${BlocProvider.of<CounterCubit>(context).pointB}",style:const TextStyle(fontSize:150.0  ,color: Colors.black),),
                    ElevatedButton(
                        onPressed: (){
                          BlocProvider.of<CounterCubit>(context).addPoint("B", 1);

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 1 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                        onPressed: (){
                          BlocProvider.of<CounterCubit>(context).addPoint("B", 2);

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 2 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                    const SizedBox(height: 10.0,),
                    ElevatedButton(
                        onPressed: (){
                          BlocProvider.of<CounterCubit>(context).addPoint("B", 3);

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          alignment: Alignment.center,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                        ),
                        child: const Text("Add 3 Point",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),
                  ],
                ),

              ],
            ),
            const SizedBox(height: 30.0,),
            ElevatedButton(onPressed:(){
              BlocProvider.of<CounterCubit>(context).reset();
            },
                style: ElevatedButton.styleFrom(
                  fixedSize:const Size.fromWidth(200.0),
                  backgroundColor: Colors.orange,
                  alignment: Alignment.center,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  padding:const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15.0),
                ),
                child: const Text("Reset",style: TextStyle(color: Colors.white,fontSize:20.0 ),)),


          ],
        ),

      );
    }, listener: (context,state){  


    });
  }
}
