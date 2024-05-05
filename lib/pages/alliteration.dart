import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class alliteration extends StatefulWidget {
  const alliteration({super.key});

  @override
  State<alliteration> createState() => _alliterationState();
}

class _alliterationState extends State<alliteration> {

  final alphabets=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'];
  String ? selectedAlpha;
  

  final apiKey = "AIzaSyC3FNTd8ZakC0ILy8NW3zq75ppOyzoidrY";
    TextEditingController txt= TextEditingController();
    var prompt = '';
    var output;
  Future<void>generate()async{
    final model=GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
    final prompt="Curate topic-specific words that start with a chosen letter.topic: ${txt.text},letter:${selectedAlpha}.Give only one";
    final content=Content.text(prompt);
    
    final response=(await model.generateContent([content]));
    
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
                Text("Alliteration",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:40)),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("Curate topic-specific words that start with a chosen letter.",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextField(
                    cursorColor: Colors.white,
                    controller: txt,
                    decoration: InputDecoration(
                      labelText: "Enter a topic:",
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
                  child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      labelText: "Words starting with:",
                      labelStyle: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:20),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)  
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)
                      ),),
                    style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:20),
                    dropdownColor: Color(0xff043a66),
                    items: alphabets.map((e) => DropdownMenuItem(child: Text(e),value: e,)).toList(),
                    onChanged: (val){
                      selectedAlpha=val as String?;
                    },
                    )
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