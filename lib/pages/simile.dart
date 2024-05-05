import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class simile extends StatefulWidget {
  const simile({super.key});

  
  @override
  State<simile> createState() => _simileState();
}

class _simileState extends State<simile> {

  final apiKey = "AIzaSyC3FNTd8ZakC0ILy8NW3zq75ppOyzoidrY";
    TextEditingController txt= TextEditingController();
    var prompt = '';
    var output;
  Future<void>generate()async{
    try{
      final model=GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
      final prompt="Give a simile for ${txt.text}.";
      final content=Content.text(prompt);
      
      final response=( await model.generateContent([content]));
      final generatedText = response.text;
      print(generatedText);
      
      setState(() {
        output = generatedText;
      });
    }
    catch(error)
    {
      print(error);
    }
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
                Text("Simile",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:40)),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text("Create a simile about a thing or concept.",style: GoogleFonts.hammersmithOne(color:Colors.white,fontSize:18)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    controller: txt,
                    decoration: InputDecoration(
                      labelText: "Enter a thing or concept:",
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

