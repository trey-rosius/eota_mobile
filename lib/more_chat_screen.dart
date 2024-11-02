import 'package:flutter/material.dart';


class MoreChatScreen extends StatefulWidget {
  @override
  _MoreChatScreenState createState() => _MoreChatScreenState();
}

class _MoreChatScreenState extends State<MoreChatScreen> {
  List<Widget> messages = [];
  bool showOptions = true;

  @override
  void initState() {
    super.initState();
    messages.addAll([
      _buildMessageBubble(
        isUser: true,
        message: 'Describe the strategy for the business, the basic steps.',
        time: '14:21 PM',
      ),
      SizedBox(height: 8.0),
      _buildMessageBubble(
        isUser: false,
        message: 'Okay, one minute.\nDetermine the goals and objectives of the business, research the market and identify your niche, develop a unique selling proposition (USP) for your product or service. Then create a team of experts to do the development and develop a marketing and promotion strategy for your product.',
        time: '14:24 PM',
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketing'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: messages,
            ),
          ),
          _buildInputField(context),
        ],
      ),
    );
  }

  Widget _buildMessageBubble({
    required bool isUser,
    required String message,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: isUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!isUser) CircleAvatar(child: Text('Helpyy')), // Placeholder for profile
        if (!isUser) SizedBox(width: 8.0),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: isUser ? Colors.blue : Colors.grey[200],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  message,
                  style: TextStyle(
                    color: isUser ? Colors.white : Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                time,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildOptionButton('Learn more', 'Here is more information about the strategy. It includes detailed steps on how to research the market and develop a marketing plan.'),
        SizedBox(height: 8.0),
        _buildOptionButton('Change request', 'Please provide the changes you would like to make to the strategy.'),
        SizedBox(height: 8.0),
        _buildOptionButton('Successful answer', 'Thank you! Let me know if you need anything else.'),
      ],
    );
  }

  Widget _buildOptionButton(String text, String response) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          messages.add(_buildMessageBubble(
            isUser: true,
            message: text,
            time: '14:25 PM',
          ));
          messages.add(SizedBox(height: 8.0));
          messages.add(_buildMessageBubble(
            isUser: false,
            message: response,
            time: '14:26 PM',
          ));
          showOptions = false;
        });
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Colors.grey[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      child: Text(text),
    );
  }

  Widget _buildInputField(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Ask anything...',
                border: InputBorder.none,
              ),
              onSubmitted: (text) {
                setState(() {
                  messages.add(_buildMessageBubble(
                    isUser: true,
                    message: text,
                    time: '14:30 PM',
                  ));
                  messages.add(SizedBox(height: 8.0));
                  if (showOptions) {
                    messages.add(_buildOptions());
                    showOptions = false;
                  }
                });
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              setState(() {
                if (showOptions) {
                  messages.add(_buildOptions());
                  showOptions = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
