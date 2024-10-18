

import 'dart:async';
import 'package:flutter/material.dart';

import '../details_screen.dart';

class Home_File extends StatefulWidget {
  const Home_File({super.key});


  @override
  State<Home_File> createState() => _Home_FileState();
}
List<String> imagelist=[
   'https://rukminim1.flixcart.com/fk-p-flap/470/80/image/ec29d9b3b0a537d1.jpg?q=20'
  'https://rukminim1.flixcart.com/fk-p-flap/470/80/image/1e31c9d65e3b4592.jpg?q=20',
  'https://rukminim1.flixcart.com/fk-p-flap/470/80/image/1e31c9d65e3b4592.jpg?q=20',

];

List<Details> detailsscreen = [
  Details(
      name: 'SAMSUNG GALAXY',
      image:
      'https://rukminim2.flixcart.com/image/312/312/xif0q/mobile/e/e/g/-original-imah4sssfvvahchb.jpeg?q=70'),
  Details(
      name: 'MEN Regular Fit',
      image:
      'https://rukminim2.flixcart.com/image/612/612/xif0q/shirt/z/z/z/m-mn-bnd-metronaut-original-imah4ufzuwcgtzyy.jpeg?q=70'),
  Details(
      name: 'TZEN MEN..',
      image:
      'https://rukminim2.flixcart.com/image/612/612/xif0q/shopsy-slipper-flip-flop/t/o/s/7-fb-red-stmf-02-tzen-red-original-imahy5bfhegnybhu.jpeg?q=70'),
  Details(
      name: 'Puma Brid..',
      image:
      'https://rukminim2.flixcart.com/image/612/612/xif0q/shoe/9/a/5/-original-imagtajhpnbrzr3x.jpeg?q=70'),
  Details(
      name: 'Titan Gent..',
      image:
      'https://rukminim2.flixcart.com/image/612/612/xif0q/watch/k/g/d/1-1713bm02-titan-men-original-imaguyx4xcgwm7xg.jpeg?q=70'),
  Details(
      name: 'Titan Gent..',
      image:
      'https://rukminim2.flixcart.com/image/612/612/xif0q/watch/k/g/d/1-1713bm02-titan-men-original-imaguyx4xcgwm7xg.jpeg?q=70'),
];
List<Widget>? page;
int pagedrection=0;
final pageview=PageController(initialPage: 0);
Timer? timer;
class _Home_FileState extends State<Home_File> {
  void startTimer(){
    timer=Timer.periodic(Duration(seconds: 3),(timer){
      if(pageview.page==imagelist.length-1){
        pageview.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
      }else{
        pageview.nextPage(duration: Duration(milliseconds: 600), curve: Curves.easeIn);
      }
    });
  }
  @override
  void initState() {
    super.initState();
    startTimer();
    page=List.generate(imagelist.length, (index){
      return Next_File(
        imagepath: imagelist[index],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home File"),),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width:double.infinity,
                height: MediaQuery.of(context).size.height*0.4,
                child: PageView.builder(
                    onPageChanged: (value){
                      setState(() {
                        pagedrection=value;
                      });
                    },
                    controller: pageview,
                    itemCount: imagelist.length,
                    itemBuilder: (context,index){
                      return page?[index];
                    }),
              ),
              Container(
                margin: EdgeInsets.only(top: 180,),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    List<Widget>.generate(imagelist.length, (index){
                      return   Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: InkWell(
                          onTap: (){
                            pageview.animateToPage(index, duration: Duration(seconds: 1), curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor:pagedrection==index? Colors.yellow:Colors.white,
                          ),
                        ),
                      );
                    })
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class Next_File extends StatefulWidget {
  String? imagepath;
  Next_File({super.key,this.imagepath});

  @override
  State<Next_File> createState() => _Next_FileState();
}

class _Next_FileState extends State<Next_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Image.network(widget.imagepath.toString(),fit:BoxFit.cover ,),
      ),
    );
  }
}

