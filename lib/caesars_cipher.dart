import 'package:flutter/material.dart';
import 'dart:math';


class CaesarCipherHomePage extends StatefulWidget {
  @override
  _CaesarCipherHomePageState createState() => _CaesarCipherHomePageState();
}

class _CaesarCipherHomePageState extends State<CaesarCipherHomePage> {
  String _hintMessage = '';
  String _encryptedMessage = '';
  String _feedbackMessage = '';
  int _shift = Random().nextInt(25) + 1; // Random shift from 1 to 25
  List<String> _characters = [];

  String _encryptMessage(String message, int shift) {
    return message.split('').map((char) {
      if (char.contains(RegExp(r'[a-zA-Z]'))) {
        int firstAscii = char.toUpperCase() == char ? 65 : 97;
        return String.fromCharCode((char.codeUnitAt(0) - firstAscii + shift) % 26 + firstAscii);
      } else {
        return char;
      }
    }).join();
  }

  @override
  void initState() {
    super.initState();
    _hintMessage = 'Hint: This is a Caesar Cipher with a shift of $_shift.';
    _encryptedMessage = _encryptMessage('HELLO FLUTTER', _shift);
    _characters = _encryptedMessage.split('');
  }

  void _checkAnswer() {
    String userAnswer = _characters.join().toUpperCase();
    print("user answer is $userAnswer");
    String correctAnswer = _encryptMessage('HELLO FLUTTER', _shift).toUpperCase();

    print("correct answer is $correctAnswer");

    if (userAnswer == correctAnswer) {
      setState(() {
        _feedbackMessage = 'Correct! Great job!';
      });
    } else {
      setState(() {
        _feedbackMessage = 'Incorrect. Try again!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caesar Cipher Puzzle Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(
          _hintMessage,
          style: TextStyle(fontSize: 18, color: Colors.lightBlueAccent),
        ),
        SizedBox(height: 20),
       Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text(
             'Encrypted Message:',
             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
           ),
           SizedBox(height: 10),
           Wrap(
             alignment: WrapAlignment.center,
             spacing: 8.0,
             children: List.generate(_characters.length, (index) {
               return Draggable<String>(
                 data: _characters[index],
                 child: DragTarget<String>(
                   onAccept: (data) {
                     setState(() {
                       int oldIndex = _characters.indexOf(data);
                       _characters.removeAt(oldIndex);
                       _characters.insert(index, data);
                     });
                   },
                   builder: (context, candidateData, rejectedData) {
                     return _buildCharacterTile(_characters[index]);
                   },
                 ),
                 feedback: _buildCharacterTile(_characters[index], isDragging: true),
                 childWhenDragging: _buildCharacterTile('', isDragging: true),
               );
             }),
           ),
           SizedBox(height: 20),
           ElevatedButton(
             onPressed: _checkAnswer,
             child: Text('Submit Answer'),
           ),
           SizedBox(height: 20),
           ElevatedButton(
             onPressed: () {
               setState(() {
                 _characters = 'HELLO FLUTTER'.split('');
               });
             },
             child: Text('Reveal Answer'),
           ),
           SizedBox(height: 20),
           Text(
             _feedbackMessage,
             style: TextStyle(fontSize: 22, color: Colors.orangeAccent),
           ),
         ],
       )
          ]
      ),
    ),
    );
  }

  Widget _buildCharacterTile(String character, {bool isDragging = false}) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isDragging ? Colors.blueAccent.withOpacity(0.5) : Colors.blueAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        character,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
    );
  }
}
