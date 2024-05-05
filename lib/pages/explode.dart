import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class explode extends StatefulWidget {
  const explode({super.key});

  @override
  State<explode> createState() => _explodeState();
}

class _explodeState extends State<explode> {

  final apiKey = "AIzaSyC3FNTd8ZakC0ILy8NW3zq75ppOyzoidrY";
    TextEditingController txt= TextEditingController();
    var prompt = '';
    var output;
  Future<void>generate()async{
    final model=GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final prompt="give similar-sounding phases of '${txt.text}'.give only one,give its explanation also";
    final content=Content.text(prompt);
    
    final response=await model.generateContent([content]);
    setState(() {
      output = response.text;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff043a66),
      body:Padding(
        padding: EdgeInsets.only(top: 45,left: 20,right: 20),
        
          child: ListView(
            children: [Column(
              
              children: [
                Text("Explode",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:40)),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("Break a word into similar-sounding phrases.",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: txt,
                    decoration: InputDecoration(
                      labelText: "Enter a word:",
                      labelStyle: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:20),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)  
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      )
                      
                       ),
                    style:  GoogleFonts.hammersmithOne(color:Colors.white,fontSize:20),
                    
                    keyboardType: TextInputType.text,
                    ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: (){
                      generate();
                    },
                    child: Text("RUN",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:20),),
                    style: ElevatedButton.styleFrom(backgroundColor: Color(0xff043a66),side: BorderSide(color: Colors.white)),
                    ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Card(
                    child: ListTile(
                      title: Text("Output:",style:  GoogleFonts.hammersmithOne(color:Color(0xff043a66),fontSize:25),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(children: [Text("$output",style:  GoogleFonts.hammersmithOne(color:Color(0xff043a66),fontSize:20))],),
                      ),
                    ),
                    
                    ),
                  ),
                
            
              ],
            
            ),]
          ),
        ), 
        
    );
  }
}