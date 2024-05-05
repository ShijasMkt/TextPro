
import 'package:google_generative_ai/google_generative_ai.dart';



  void main()async{
  final apiKey = "AIzaSyC3FNTd8ZakC0ILy8NW3zq75ppOyzoidrY";
  final model=GenerativeModel(model: 'gemini-pro', apiKey: apiKey);
  final prompt="give a simile for water";
  final content=Content.text(prompt);
    
  final response=(await model.generateContent([content]));
  print(response.text);
  }