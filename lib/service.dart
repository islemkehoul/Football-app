
import 'package:http/http.dart' as http;
import 'matchesmodel.dart';
import 'package:intl/intl.dart';


class Service  {
   static String dateto ;
   static final DateFormat formatter = DateFormat('yyyy-MM-dd');
 
  static String token = "ee0a94e6bec540508633fee3840bc73b";
   
  static Future<List<Match>> allmatchestoday() async{
   String url = "https://api.football-data.org/v2/matches?dateFrom=" + "" + "&dateTo=" + "" ;

  final response = await http.get(url,
  headers: {
  "Accept": "application/json",
  "X-Auth-Token": "$token"
        });

  print(response.body);

  final List<Match>  matches = matchesFromJson(response.body).matches ;

  return matches ;
  }
  static Future<List<Match>> allmatchestom() async{
   String url = "https://api.football-data.org/v2/matches?dateFrom=" +  "${formatter.format(DateTime(DateTime.now().year, DateTime.now().month,DateTime.now().day + 1))}" + "&dateTo=" +  "${formatter.format(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 1))}"; 

  final response = await http.get(url,
  headers: {
  "Accept": "application/json",
  "X-Auth-Token": "$token"
        });

  print(response.body);

  final List<Match>  matches = matchesFromJson(response.body).matches ;

  return matches ;
  }
  static Future<List<Match>> allmatchesyes() async{
   String url = "https://api.football-data.org/v2/matches?dateFrom=" + "${formatter.format(DateTime(DateTime.now().year, DateTime.now().month,DateTime.now().day - 1))}" + "&dateTo=" +  "${formatter.format(DateTime(DateTime.now().year, DateTime.now().month,DateTime.now().day - 1))}";

  final response = await http.get(url,
  headers: {
  "Accept": "application/json",
  "X-Auth-Token": "$token"
        });

  print(response.body);

  final List<Match>  matches = matchesFromJson(response.body).matches ;

  return matches ;
  }
}
 
 
 


  
