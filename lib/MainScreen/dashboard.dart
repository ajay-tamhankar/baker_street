import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool bottomPressed=false;
  GlobalKey<ScaffoldState> scaffolKey = GlobalKey<ScaffoldState>();
  Widget myDrawer(){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              'Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
                letterSpacing: -0.39,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              setState(() {
                bottomPressed=false;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              setState(() {
                bottomPressed=true;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout_sharp),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // Add more list items as needed
        ],
      ),
    );
  }
List<bool> data=[false,false,false,false,false,false,false,false,false,false,];
  Widget score(){
    return const Column(
      children: [
        Text(
          '14,522',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            height: 0,
            letterSpacing: -0.39,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'SCORE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
            letterSpacing: -0.39,
          ),
        ),
      ],
    );
  }
  Widget bodyText(String text){
    return Text(text, style: const TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      height: 0,
      letterSpacing: -0.39,
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolKey,
      drawer:  myDrawer(),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            scaffolKey.currentState?.openDrawer();
          },
            child: Row(
              children: [
                const SizedBox(width: 10,),
                Container(
                  color: Colors.white,
                  width: 41.76,
                  height: 41.76,
                  child: Image.asset('assets/img.png'),
                ),
              ],
            )),
        actions: [Container(
          width: 36,
          height: 36,
          padding: const EdgeInsets.all(8),
          decoration: ShapeDecoration(
            color: const Color(0xFF2B2B2B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/img_1.png'),
            ],
          ),
        ),const SizedBox(width: 10,)],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 7,
                    height: 196,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFFAB49),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 18,),
                  Column(
                    children: [
                      Row(
                        children: [
                          score(),
                          const SizedBox(width: 21),

                          Container(
                            width: 1,
                            height: 60,
                            color: Colors.grey,
                            margin: const EdgeInsets.all(3),
                          ),
                          const SizedBox(width: 21),
                          score(),
                          const SizedBox(width: 21),
                          Container(
                            width: 1,
                            height: 60,
                            color: Colors.grey,
                            margin: const EdgeInsets.all(8),
                          ),
                          const SizedBox(width: 21),
                          score()
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            bodyText("Baker Street Fintech Private Limited is a"),
                            bodyText("fintech products company that helps clients"),
                            bodyText("build fintech products. The company was"),
                            bodyText("incorporated on September 5, 2020 and is "),
                            bodyText("located at 5F, P-6, Sub Plot-9/10,Prabhodhan"),
                            bodyText("Housing Society,Erandwana,Pune,Maharashtra."),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
              const SizedBox(height: 5,),
              SizedBox(
                width: double.infinity,
                height: 400,
                child:  ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 4,
                      child: Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: double.infinity,
                        height: 80,
                        decoration: BoxDecoration(color: data[index]?Colors.white:const Color(0xFF1F1F1F),borderRadius: BorderRadius.circular(0)),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      color: Colors.black,
                                      width: 15,
                                      height: 15,
                                      child: Image.asset('assets/img_4.png'),
                                    ),
                                    const SizedBox(width: 8,),
                                    Text('Baker Street',style: TextStyle(
                                      color: data[index]?Colors.black:Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                      letterSpacing: -0.39,
                                    ),),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      data[index]=!data[index];
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: data[index]?
                                    Image.asset('assets/img_7.png'):Image.asset('assets/img_8.png'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.only(top: 18, left: 8, right: 8, bottom: 8),
        decoration: ShapeDecoration(
          color: const Color(0xFF1A1A1A),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: Colors.white.withOpacity(0.30000001192092896),
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomPressed=false;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          bottomPressed?
                          Image.asset('assets/img_3.png'):Image.asset('assets/img_5.png'),
                          const SizedBox(height: 8),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: bottomPressed?Colors.white:const Color(0xFFFFAB49),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.39,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 106),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 8),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          bottomPressed=true;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          bottomPressed?
                          Image.asset('assets/img_2.png'):Image.asset('assets/img_6.png'),
                          Text(
                            'Settings',
                            style: TextStyle(
                              color: bottomPressed?const Color(0xFFFFAB49):Colors.white,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              letterSpacing: -0.39,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}