import 'package:eota/models/ConversationResponse.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class GeneratedImage extends StatefulWidget {
  final ConversationResponse? conversationResponse;

  GeneratedImage({required this.conversationResponse});

  @override
  State<GeneratedImage> createState() => _GeneratedImageState();
}

class _GeneratedImageState extends State<GeneratedImage> {


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
                    child:  CachedNetworkImage(
                        width:MediaQuery.of(context).size.width,

                        fit: BoxFit.cover,
                        imageUrl: widget.conversationResponse!.imageUrl!,
                        placeholder: (context,
                            url) =>
                        const CircularProgressIndicator(),
                        errorWidget: (context,
                            url, ex) =>
                             Icon(
                                Icons
                                    .image,
                                color:
                                Colors.white,


                            )),
                  ),
                ),


      ],
    );
  }
}
