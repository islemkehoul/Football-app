
import 'package:http/http.dart' as http;
import 'matchesmodel.dart';

class Service  {
  static String token = "ee0a94e6bec540508633fee3840bc73b";
  static String url = "https://api.football-data.org/v2/matches";
  
  static Future<List<Matches>> allmatches() async{
  
  final response = await http.get(url,
  headers: {
  "Accept": "application/json",
  "X-Auth-Token": "$token"
        });

  print(response.body);

  final List<Matches>  matches = matchesFromJson(response.body) as List<Matches>;

  return matches ;
  }
}
 
 
 


  
