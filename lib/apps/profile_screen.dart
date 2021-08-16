import 'package:expert_flutter_frontend_dev/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.32,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/bg.png'),
                    fit: BoxFit.cover,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:120.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/girl.png',
                            ),
                            fit: BoxFit.contain),
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xffee6cb6),
                              Color(0xffea76c4),
                              Color(0xffe680d2),
                              Color(0xffbf9df5),
                              Color(0xffb0a1f9),
                            ]),
                        // border: Border.all(color: Colors.red, width: 1.5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white, blurRadius: 1.5, spreadRadius: 1.5),
                        ]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(height: 10.0,),
                  Text('Sofiya Lopes', style: GoogleFonts.abhayaLibre(fontSize: 40.0, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0,),
                  Text('Hi This is Sofia Lopes, working in Ridz Creations as Flutter Developer having Expertise in Flutter UI.', style: GoogleFonts.actor(fontSize: 18.0,),),
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('130', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                            Text('Points', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Text('25K', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                            Text('Followers', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          children: [
                            Text('1256', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                            Text('Following', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Divider(thickness: 1.5,),
                  Row(children: [
                    Icon(Icons.person_add, size: 30.0,),
                    SizedBox(width: 10.0,),
                    Text('20 Friends \nFollowings'),
                    SizedBox(width: 10.0,),
                    Container(
                      width: size.width*0.6,
                      height: 80.0,
                      child: GridView.count(
                        crossAxisCount: 1,
                        scrollDirection: Axis.horizontal,
                        childAspectRatio: 1.5,
                        padding: EdgeInsets.all(5.0),
                        children: [
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1513207565459-d7f36bfa1222?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=635&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1545912452-8aea7e25a3d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1513207565459-d7f36bfa1222?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=635&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1599842057874-37393e9342df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                          Container(
                            height:80.0,
                            width: 80.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: NetworkImage('https://images.unsplash.com/photo-1545912452-8aea7e25a3d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ],
                      ),
                    )
                  ],),
                  Divider(thickness: 1.5,),
                  Info(text: 'Post Graduated in Art',),
                  Info(text: 'Female', icon: Icons.person),
                  Info(text: '124K',icon: Icons.favorite_border,),
                  Info(text: 'USA', icon: Icons.location_on,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  final IconData icon;
  final String text;
  const Info({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Icon(icon??Icons.cast_for_education),
            SizedBox(width: 10.0,),
            Text(text??'This is Demo data'),
          ],
        ),
      ),
    );
  }
}
