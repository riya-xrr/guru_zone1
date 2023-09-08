import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var SearchHeight = 40.0;
  var filterTags = ['All','Flutter','Android','Ui/Ux'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xB5B6C2DF),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Container(
            width: double.infinity,
            height: 180,
            child: Padding(
              padding: const EdgeInsets.only(top:25.0,left: 15.0,right: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            child: Image.asset('assets/icons/Arrow.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              child: Text(
                                'Search Your Guru',
                                style: TextStyle(
                                    fontFamily: 'BoldFont',
                                  fontSize: 18,
                                  color: Color(0xff333D52)
                                ),
                              )
                          )
                        ],
                      )
                  ),
                  Container(
                    height: SearchHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffABABAB)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SearchHeight,
                          width: SearchHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Image.asset('assets/icons/Vectorguru.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 245,
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Send Request to All Mentors',
                              labelStyle: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Color(0xff8A98B1),
                                fontSize: 14,
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Container(
                            height: SearchHeight-4,
                            width: SearchHeight-4,
                            decoration: BoxDecoration(
                              color: Color(0xff0095FF),
                              borderRadius: BorderRadius.circular(6)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Image.asset('assets/icons/Vectormentor.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: SearchHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffABABAB)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: SearchHeight,
                          width: SearchHeight,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Container(
                              child: Image.asset('assets/icons/Search.png'),
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 245,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Search Mentors, skills , etc',
                                labelStyle: TextStyle(
                                  fontFamily: 'RegularFont',
                                  color: Color(0xff8A98B1),
                                  fontSize: 14,
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Container(
                            height: SearchHeight-4,
                            width: SearchHeight-4,
                            decoration: BoxDecoration(
                                color: Color(0xff0095FF),
                                borderRadius: BorderRadius.circular(6)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Image.asset('assets/icons/fliter.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 30,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: filterTags.length,
                        itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.only(right: 6),
                        child: Container(
                          width: 80,
                          child: Center(child: Text(filterTags[index])),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xffABABAB))
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
              ProfileList(),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileList extends StatefulWidget{
  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  var cardData = [
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,
    },
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,
    },
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'price' : 5,
    }
  ];

  var technologies = ['Flutter','Android','Java','M.L.','Node.js'];
  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        children: cardData.map((value) => Padding(
          padding: const EdgeInsets.fromLTRB(15, 9, 15, 9),
          child: Container(
            height: 291,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 17, 20, 17),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 16, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(value['name'].toString(),
                              style: TextStyle(
                                  color: Color(0xff333D52),
                                  fontFamily: 'SemiBoldFont',
                                  fontSize: 16
                              ),
                            ),
                            Text(value['profession'].toString(),
                              style: TextStyle(
                                  color: Color(0xff586172),
                                  fontFamily: 'RegularFont'
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 13,
                                    height: 13,
                                    child: Image.asset('assets/icons/star.png')
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(value['ratings'].toString(),
                                  style: TextStyle(
                                      color: Color(0xff586172),
                                      fontFamily: 'RegularFont'
                                  ),
                                ),
                                Text(' ('+value['reviewCount'].toString()+' Reviews)',
                                  style: TextStyle(
                                      color: Color(0xff586172),
                                      fontFamily: 'RegularFont'
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 13,
                                    height: 13,
                                    child: Image.asset('assets/icons/location.png')
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(value['location'].toString(),
                                  style: TextStyle(
                                      color: Color(0xff586172),
                                      fontFamily: 'RegularFont'
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              child: Image.asset('assets/icons/linkedin.png'),
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xff0095FF))
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              child: Image.asset('assets/icons/Heart.png'),
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xffFF7070))
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 90,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x333D521A))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset('assets/icons/Global.png'),
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(value['language'].toString(),
                                style: TextStyle(
                                    fontFamily: 'RegularFont',
                                    color: Color(0xff0095FF)
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 190,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0x333D521A))
                          ),
                          alignment: Alignment.center,
                          child: Text(value['personalization'].toString(),
                            style: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Color(0xff0095FF)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Container(
                        height: 61,
                        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 6,childAspectRatio: 3.5,mainAxisSpacing: 6),
                          itemBuilder: (context,index){
                            return Container(
                              alignment: Alignment.center,
                              height: 10,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0x333D521A)),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Text(technologies[index],
                                style: TextStyle(
                                    fontFamily: 'RegularFont',
                                    color: Color(0xff333D52)
                                ),),
                            );
                          },
                          itemCount: technologies.length,
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 140,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xff0095FF))
                          ),
                          alignment: Alignment.center,
                          child: Text("From \$"+value['price'].toString()+'/hour',
                            style: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Color(0xff0095FF)
                            ),
                          ),
                        ),
                        Container(
                          width: 140,
                          height: 36,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Color(0xff0095FF)),
                              color: Color(0xff0095FF)
                          ),
                          alignment: Alignment.center,
                          child: Text('Pull Request',
                            style: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        ).toList()
    );
  }
}