import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:http/http.dart' as http;
class WebSocketsScreen extends StatefulWidget {
  const WebSocketsScreen({super.key});

  @override
  State<WebSocketsScreen> createState() => _WebSocketsScreenState();
}

class _WebSocketsScreenState extends State<WebSocketsScreen> {

  String getAuthProtocol(Map<String, dynamic> authorization) {
    // Convert authorization map to JSON and then to Base64
    String header = base64Encode(utf8.encode(jsonEncode(authorization)))
        .replaceAll('+', '-') // Convert '+' to '-'
        .replaceAll('/', '_') // Convert '/' to '_'
        .replaceAll('=', ''); // Remove padding '='

    return 'header-$header';
  }
  final channel = IOWebSocketChannel.connect(
    Uri.parse('wss://ksnlero6pba6lmnw3kkcpwaxqq.appsync-realtime-api.us-east-2.amazonaws.com/event/realtime'),
    protocols: {
     'aws-appsync-event-ws',
    },
    headers: {
      'x-api-key': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
      'host':'ksnlero6pba6lmnw3kkcpwaxqq.appsync-api.us-east-2.amazonaws.com'
    },
  );



  Future<void>webSockets()async{
    print("we in here 2");
    await channel.ready;


    channel.stream.listen((message) {
      Map<String, dynamic> messageData = jsonDecode(message);
      print('Received message: $messageData');
     // print("messages $message");
      print("listening ");
     // channel.sink.add('received!');
    //  channel.sink.close(status.goingAway);
    },onError: (error){
      print('Received message error : $error');
    });


  }

  Future<http.Response> createAlbum(String title) async {
    print("in here");
    return http.post(
      Uri.parse('https://ksnlero6pba6lmnw3kkcpwaxqq.appsync-api.us-east-2.amazonaws.com/event'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'x-api-key': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
        'host':'ksnlero6pba6lmnw3kkcpwaxqq.appsync-api.us-east-2.amazonaws.com'
      },
      body: jsonEncode(<String, dynamic>{
        "channel": "/default/",
        "events": [
          jsonEncode(<String,String>{
            "message":'Hello World! Introducing AWS AppSync Events!'})
        ]
      }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("we in here");
   webSockets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: () async{
              final message = {
                "id": "ee849ef0-cf23-4cb8-9fcb-152ae4fd1e69",
                "payload": {
                  "data": {
                    "channel": "/default/",
                    "message": 'Hello World! Introducing AWS AppSync Events!'
                  },
                  "extensions": {
                    "authorization": {
                     // "Authorization": "eyEXAMPLEiJjbG5xb3A5eW5MK09QYXIrMTJEXAMPLEBieU5WNHhsQjhPVW9YMnM2WldvPSIsImFsZyI6IlEXAMPLEn0.eyJzdWIiOiJhNmNmMjcwNy0xNjgxLTQ1NDItEXAMPLENjY0MTg2NjlkMzYiLCJldmVudF9pZCI6ImU3YWVmMzEyLWUEXAMPLEY0Zi04YjlhLTRjMWY5M2Q5ZTQ2OCIsInRva2VuX3VzZSI6ImFjY2VzcyIsIEXAMPLEIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE1Njk2MTgzMzgsImlzcyI6Imh0dEXAMPLEXC9jb2duaXRvLWlkcC5hcC1zb3V0aGVhc3QtMi5hbWF6b25hd3MuY29tXC9hcC1zbEXAMPLEc3QtMl83OHY0SVZibVAiLCJleHAiOjE1NzAyNTQ3NTUsImlhdCI6MTU3MDI1MTE1NSwianRpIjoiMmIEXAMPLEktZTVkMi00ZDhkLWJiYjItNjA0YWI4MDEwOTg3IiwiY2xpZW50X2lkIjoiM3FlajVlMXZmMzd1EXAMPLE0dG91dDJkMWwiLCJ1c2VybmFtZSI6ImVsb3J6YWZlIn0.CT-qTCtrYeboUJ4luRSTPXaNewNeEXAMPLE14C6sfg05tO0fOMpiUwj9k19gtNCCMqoSsjtQoUweFnH4JYa5EXAMPLEVxOyQEQ4G7jQrt5Ks6STn53vuseR3zRW9snWgwz7t3ZmQU-RWvW7yQU3sNQRLEXAMPLEcd0yufBiCYs3dfQxTTdvR1B6Wz6CD78lfNeKqfzzUn2beMoup2h6EXAMPLE4ow8cUPUPvG0DzRtHNMbWskjPanu7OuoZ8iFO_Eot9kTtAlVKYoNbWkZhkD8dxutyoU4RSH5JoLAnrGF5c8iKgv0B2dfEXAMPLEIihxaZVJ9w9w48S4EXAMPLEcA",
                     // 'x-api-key': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
                      'Authorization': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
                      'host':'ksnlero6pba6lmnw3kkcpwaxqq.appsync-api.us-east-2.amazonaws.com'
                    }
                  }
                },
                "type": "start"
              };

              final messageData = {
                "channel": "/default/",
                "extensions": {
                  "authorization": {
                    // "Authorization": "eyEXAMPLEiJjbG5xb3A5eW5MK09QYXIrMTJEXAMPLEBieU5WNHhsQjhPVW9YMnM2WldvPSIsImFsZyI6IlEXAMPLEn0.eyJzdWIiOiJhNmNmMjcwNy0xNjgxLTQ1NDItEXAMPLENjY0MTg2NjlkMzYiLCJldmVudF9pZCI6ImU3YWVmMzEyLWUEXAMPLEY0Zi04YjlhLTRjMWY5M2Q5ZTQ2OCIsInRva2VuX3VzZSI6ImFjY2VzcyIsIEXAMPLEIjoiYXdzLmNvZ25pdG8uc2lnbmluLnVzZXIuYWRtaW4iLCJhdXRoX3RpbWUiOjE1Njk2MTgzMzgsImlzcyI6Imh0dEXAMPLEXC9jb2duaXRvLWlkcC5hcC1zb3V0aGVhc3QtMi5hbWF6b25hd3MuY29tXC9hcC1zbEXAMPLEc3QtMl83OHY0SVZibVAiLCJleHAiOjE1NzAyNTQ3NTUsImlhdCI6MTU3MDI1MTE1NSwianRpIjoiMmIEXAMPLEktZTVkMi00ZDhkLWJiYjItNjA0YWI4MDEwOTg3IiwiY2xpZW50X2lkIjoiM3FlajVlMXZmMzd1EXAMPLE0dG91dDJkMWwiLCJ1c2VybmFtZSI6ImVsb3J6YWZlIn0.CT-qTCtrYeboUJ4luRSTPXaNewNeEXAMPLE14C6sfg05tO0fOMpiUwj9k19gtNCCMqoSsjtQoUweFnH4JYa5EXAMPLEVxOyQEQ4G7jQrt5Ks6STn53vuseR3zRW9snWgwz7t3ZmQU-RWvW7yQU3sNQRLEXAMPLEcd0yufBiCYs3dfQxTTdvR1B6Wz6CD78lfNeKqfzzUn2beMoup2h6EXAMPLE4ow8cUPUPvG0DzRtHNMbWskjPanu7OuoZ8iFO_Eot9kTtAlVKYoNbWkZhkD8dxutyoU4RSH5JoLAnrGF5c8iKgv0B2dfEXAMPLEIihxaZVJ9w9w48S4EXAMPLEcA",
                    // 'x-api-key': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
                    'Authorization': 'da2-hkxi2i2kijgq3io3xrdlz6etwm',
                    'host':'ksnlero6pba6lmnw3kkcpwaxqq.appsync-api.us-east-2.amazonaws.com'
                  }
                },
                "events": [

                    {"message": 'Hello World! Introducing AWS AppSync Events!'}
                ]
              };

            await createAlbum("title");
             // channel.sink.add(jsonEncode(message));
            }, child: Text("send more data"))
          ],
        ),
      ),
    );
  }
}
