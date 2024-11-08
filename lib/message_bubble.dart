import 'package:eota/models/ConversationResponse.dart';
import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:provider/provider.dart';
import 'message.dart';
import 'message_repository.dart';

class MessageBubble extends StatefulWidget {
  final ConversationResponse? conversationResponse;

  MessageBubble({required this.conversationResponse});

  @override
  State<MessageBubble> createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {


  @override
  Widget build(BuildContext context) {


    return Column(
      children: [


           Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  alignment:Alignment.center,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width,
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:
                         Colors.grey.shade800,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft:
                          Radius.circular(5) ,
                          bottomRight:
                          Radius.circular(5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: BlurText(
                          text: widget.conversationResponse!.message!,
                          duration: const Duration(seconds: 4),
                          type: AnimationType.word,
                           textStyle: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),


        /*
        if (widget.responseOptions.isNotEmpty)
          Container(
            child: Column(
              children: widget.responseOptions.map((option) {
                return Container(

                    alignment: Alignment.centerRight,
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width/1.5,
                        ),
                        child: Container(

                          margin: EdgeInsets.all(10),

                          decoration: BoxDecoration(
                            color: Colors.black54,

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                              bottomLeft:
                              Radius.circular(16) ,
                              bottomRight:
                              Radius.circular(16),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              option,
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () {
                              messageRepo.handleResponse(option);
                            },
                          ),

                        )));
              }).toList(),
            ),
          ),

         */
      ],
    );
  }
}
