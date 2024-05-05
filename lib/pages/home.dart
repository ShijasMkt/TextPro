import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState>_scaffoldkey = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldkey,
      drawer: new Drawer(
        
        backgroundColor: Color(0xff043a66),
        child:ListView(
          children: [Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Text("About",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize: 25)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Text("Discover TextPro: Your creative writing companion! With 10 AI tools, from crafting vivid scenes to generating unexpected plot twists, TextPro empowers your literary journey. Spark your imagination, refine your prose, and unlock your creativity with ease. Join us and elevate your writing to new heights!",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize: 18)),
          )],
        ),
        
        ),
      appBar: AppBar(title: Text("TextPro",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize: 35),),scrolledUnderElevation: 20,
      backgroundColor: Color(0xff043a66),
      centerTitle: true,
      
      leading: IconButton(onPressed: ()=>_scaffoldkey.currentState?.openDrawer(), icon: Icon(Icons.menu,color: Colors.white,))
      ),
      // drawer: Drawer(),
      body: ListView(
        padding: EdgeInsets.only(top:15,bottom: 15),
        children: [
          
           Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                    
                    color: Color(0xff043a66),
                    child: ListTile(
                      textColor: Colors.white,
                      title: Center(child:Text("Simile",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                      onTap: ()=>Navigator.pushNamed(context, '/simile'),  
                                    
                      ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Explode",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/explode'),

                    ),
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Unexpect",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/unexpect'),                  
                    ),
                ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Chain",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/chain'),                   
                    ),
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Alliteration",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/alliteration'),                   
                    ),
                ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,  
                    title: Center(child:Text("POV",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/pov'),                   
                    ),
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Fuse",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/fuse'),                   
                    ),
                ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Acronym",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/acronym'),                   
                    ),
                ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Unfold",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/unfold'),                   
                    ),
                ),
                ),
                SizedBox(
                  height: 180,
                  width: 180,
                  child: Card(
                  color: Color(0xff043a66),
                  child: ListTile(
                    textColor: Colors.white,
                    title: Center(child:Text("Scene",style: GoogleFonts.hammersmithOne(fontSize:20),)),
                    onTap: ()=>Navigator.pushNamed(context, '/scene'),                   
                    ),
                ),
                )
              ],
            ),
            
          
          
        ],
      )
      );
    
  }
}