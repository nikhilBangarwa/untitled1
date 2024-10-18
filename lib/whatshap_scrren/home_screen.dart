




import 'package:flutter/material.dart';

import 'address_screen.dart';

class pageviwe extends StatefulWidget {
  const pageviwe({super.key});

  @override
  State<pageviwe> createState() => _pageviweState();
}

class _pageviweState extends State<pageviwe> {
  List<Widget> list=[
    CallScreen(),
    UpdateScreen(),
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    List<Person> list=[
      Person(time: '12/3/2023', name: 'sachin', title: 'kit h bhai',lastseen: 'last seen today at 11:45', img:"https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg",address: [
        Address(time: '12:33', mes: '   hello    '),
        Address(time: '1:23', mes: '  ha bol  ',issend: true),
        Address(time: '1:24', mes: '  ksa h tu '),
        Address(time: '1:25', mes: '  bdiya hu bahi teri bta  ',issend: true),
        Address(time: '2:2', mes: '  thik huu '),
        Address(time: '2:34', mes: 'aaj kal kya kam krta h' ,issend: true),
        Address(time: '3:3', mes: '  kuch nhi '),
        Address(time: '12:33', mes: '     acha   ',issend: true),
        Address(time: '12:33', mes: '  tu ke kam kar h '),
        Address(time: '12:33', mes: '  I am a coder  ',issend: true),
      ]),
      Person(time: '28/9/2024', name: 'aman', title: 'arr aaja online',lastseen: 'last seen yestred at 1:23',img:"https://media.istockphoto.com/id/505239248/photo/humayun-tomb-new-delhi-india.jpg?s=2048x2048&w=is&k=20&c=zcpBsKWREyEgppKrHpR6KeVflgOfvEy-uk7_J-JBzAY=", address: [
        Address(time: '2:34', mes: '   hello  '),
        Address(time: '1:23', mes: '  ha bol  ',issend: true),
        Address(time: '1:24', mes: '  kya kar rha h '),
        Address(time: '1:25', mes: '  kuch nhi yrr ',issend: true),
        Address(time: '1:45', mes: '   kuch tho kar le '),
        Address(time: '2:34', mes: '  yrr koi kam hii nhi h' ,issend: true),
        Address(time: '3:3', mes: 'kuch nhi'),
        Address(time: '6:34', mes: '  acha  ',issend: true),
        Address(time: '4:56', mes: 'tu ke kam kar h'),
        Address(time: '6:56', mes: '  I am a coder  ',issend: true),
      ]),
      Person(time: 'Friday', name: 'amit bhai', title: 'bhai kit jara h',lastseen: 'last seen yestred at 1:23',img:'https://images.unsplash.com/photo-1576158113928-4c240eaaf360?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D', address: [
        Address(time: '5:30', mes: '   good morging   '),
        Address(time: '5:36', mes: '  same too you  ',issend: true),
        Address(time: '1:24', mes: '  kya kar rha h '),
        Address(time: '1:25', mes: '  kuch online dekh rha huu  ',issend: true),
        Address(time: '1:45', mes: '   kya dekh rhe hoo '),
        Address(time: '2:34', mes: '  aapke T-shirt dekh rha huu' ,issend: true),
        Address(time: '3:3', mes: '  Thx bhai'),
        Address(time: '6:34', mes: '  tere liye na mere liye dekhu huu  ',issend: true),
        Address(time: '4:56', mes: '  meri bhi ak oder kriye'),
        Address(time: '6:56', mes: '  paisa koni  ',issend: true),
      ])
    ];
    return Scaffold(
      appBar: AppBar(title:  const Text(TextScreen.appname,style: TextStyle(fontWeight: FontWeight.w700),),
        actions: const [
          Icon(Icons.camera_alt_outlined,),
          SizedBox(width: 15,),
          Icon(Icons.search),
          SizedBox(width: 15,),
          Icon(Icons.more_vert),
          SizedBox(width: 15,)
        ],
        elevation: 20,
      ),
      body: Column(
        children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder:(context,i){
                Person person=list[i];
                return ListTile(

                  Sachu Jaat, [17-10-2024 17:42]
                  title: Text(person.name,style:const TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                subtitle: Text(person.title),
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                return ChatScreen(person: person,);
                }));
                },
                leading: ClipOval(child: Image.network(person.img,width: 50,height: 50,fit: BoxFit.cover)),
                trailing: Text(person.time),
                );
              } ),
          SizedBox(
            height: 700,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                CallScreen(),
                UpdateScreen(),
                PwScreen()
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: TextScreen.labletext,),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: TextScreen.lablevalue,),
          BottomNavigationBarItem(icon: Icon(Icons.update),label: TextScreen.labletitle),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: TextScreen.lableconst),
        ],
        type:BottomNavigationBarType.fixed,
        onTap: (value){
          index=value;
          setState(() {list[index];}
          );
        },
      ),


    );
  }
}