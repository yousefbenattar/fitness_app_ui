import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.amber,
        toolbarHeight: 50,
        leadingWidth: 200,
        leading: Container(
          margin: const EdgeInsets.only(left:10.0),
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Hi Mechial',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text('are you ready for workout ?',style: TextStyle(fontWeight: FontWeight.bold)),
          ],),
        ),
        actions:const [Padding(
          padding: EdgeInsets.only(right:10.0),
          child: CircleAvatar(radius: 25,backgroundColor: Colors.amber,),
        )],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          
          children: [
          box,
         Container(
          height: 60,
           padding: EdgeInsets.symmetric(horizontal: 15),
           child: CupertinoSearchTextField(
            
              placeholder: "Search",
              prefixIcon: Icon(Icons.search,color: Colors.black,),
              suffixIcon: Icon(Icons.search,color: Colors.black,),
            ),
         ),box,
     const   Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('Last Week Result',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Text('See Details')
            ],),
        ),
          box,
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (itemBuilder,index){
              return Container(
                decoration: BoxDecoration(
                  color:const Color.fromARGB(255, 224, 221, 221),
                  borderRadius: BorderRadius.circular(10)
                ),
                margin:const EdgeInsets.all(10),
                padding:const EdgeInsets.all(10),
                
                height: 150,
                width: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  list[index].icon,
                  Text(list[index].number.toString(),style:const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text(list[index].text,style:const TextStyle(fontSize: 20),),
                ],),
              );
            }),
          ),
          box,
         const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Text('Continue Workout',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          box,
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: workouts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (itemBuilder,index){
              return Container(
                padding:const EdgeInsets.all(10),
                margin:const EdgeInsets.all(10),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(workouts[index].img),fit: BoxFit.fill)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(workouts[index].name,style:const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                  Text(workouts[index].type,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  Text(workouts[index].level,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                ],),
              );
            }),
          ),
           box,
         const Padding(
            padding: EdgeInsets.only(left:10.0),
            child: Text('Recommended',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          box,
          SizedBox(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: workouts.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (itemBuilder,index){
              return Container(
                padding:const EdgeInsets.all(10),
                margin:const EdgeInsets.all(10),
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(image: AssetImage(workouts[index].img),fit: BoxFit.fill)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(workouts[index].name,style:const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold)),
                  Text(workouts[index].type,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                  Text(workouts[index].level,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
                ],),
              );
            }),
          )
        ],),
      ),
    );
  }
}
