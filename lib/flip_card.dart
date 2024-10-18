import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:untitled/details_screen.dart';
import 'package:untitled/peerson_data.dart';


import 'null_sefty/first_file.dart';

class FlipCard extends StatefulWidget {
  const FlipCard({super.key});

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> {
  bool send1 = true;

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
        name: ' RVN Toys',
        image:
            'https://rukminim2.flixcart.com/image/612/612/xif0q/action-figure/b/d/7/7-naruto-itachi-uchiha-action-figure-21-cm-anime-for-car-original-imagmqwmkgfzczpx.jpeg?q=70'),
  ];
  List<Person> personlist=[
    Person(title: 'baAt Ultiman Pris...', name: 'Black Strap,Free Size', image: 'https://rukminim2.flixcart.com/image/612/612/xif0q/smartwatch/f/b/5/-original-imagyxxfgx2zhnbt.jpeg?q=70'),
    Person(title: ' boAt Stone  W\n Blutooth Speaker', name: '   Black, MOno Chanel', image: 'https://rukminim2.flixcart.com/image/612/612/xif0q/headphone/p/0/p/-original-imagp6skfbnypq5g.jpeg?q=70'),
    Person(title: '     Unix Boom-RA', name: '    Splash-proof 3D', image: 'https://rukminim2.flixcart.com/image/612/612/xif0q/speaker/mobile-tablet-speaker/v/7/s/boom-ra-splash-proof-3d-sound-with-high-bass-6hr-playtime-unix-original-imagqxv7d2bbjzf2.jpeg?q=70'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 40,
        title: const Text(
          'FlipKart',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.account_circle_rounded,size: 30,),
              SizedBox(width: 5,),
              Text('Login',style: TextStyle(color: Colors.black),)
            ],
          ),  SizedBox(width: 12,),
          Icon(Icons. shopping_cart_rounded,size: 30,color: Colors.black,),
          SizedBox(width: 12,),

        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Column(
                    children: [
                      Text('Brand Mall'),
                      Switch(
                          value: send1,
                          onChanged: (value) {
                            send1 = value;
                            setState(() {});
                          }),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(bottom: 20, left: 30, top: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'search your itme',
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                            suffixIcon: const Icon(
                              Icons.mic,
                              color: Colors.blue,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                  ),
                ],
              ),  SizedBox(
                height: 100,
                child: CarouselSlider(
                    items: [
                      Image.network('https://rukminim1.flixcart.com/fk-p-flap/470/80/image/ec29d9b3b0a537d1.jpg?q=20'),
                      Image.network('https://rukminim1.flixcart.com/fk-p-flap/470/80/image/ef59fb90a107a29b.jpg?q=20'),
                      Image.network('https://rukminim1.flixcart.com/fk-p-flap/470/80/image/1e31c9d65e3b4592.jpg?q=20'),
                    ],
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,

                      scrollDirection: Axis.horizontal,
                    )
                ),
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Text('RECENTLY VIEWED '
                  'STORES',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: detailsscreen.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      Details details = detailsscreen[index];
                      return Container(
                        margin: EdgeInsets.all(10),
                        height: 150,
                        child: Column(
                          children: [
                            Container(
                              child: Image.network(
                                details.image,
                                height: 100,
                                width: 50,
                              ),
                            ),
                            Text(details.name,style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      );
                    }),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'BEST RATED BEST PRICE',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: Colors.black,fontSize: 20),
                    ),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text('See All',style: TextStyle(fontSize: 15),))
                  ],
                ),
              ),SizedBox(height: 5,),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Home_File();
                  }));
                },
                child: Container(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Text(
                      '             Explore  more           ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8,),
            Text("Best Of Electronice",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             SizedBox(height: 5,),
             SizedBox(
               height: 400,
               child: ListView.builder(
                   itemCount: personlist.length,
                   itemBuilder: (context,index){
                     Person person=personlist[index];
                 return Container(
                   margin: EdgeInsets.all(20),
                   height: 100,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.all(Radius.circular(10)),

                   ),
                   child: Row(
                         children: [
                           Image.network(person.image),

                           SizedBox(width: 10,),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(person.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                               SizedBox(width: 10,),
                               Text(person.name),

                             ],
                           ),
                           Spacer(),
                           Icon(Icons.chevron_right,color: Colors.blue,),
                         ],
                       )


                 );
               }),
             )
            ],
          ),
        ),
      ),
    );
  }
}
