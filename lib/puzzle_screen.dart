import 'package:flutter/material.dart';


class VigenereCipherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vigenère Cipher',
      theme: ThemeData.light(),
      home: VigenereCipherHome(),
    );
  }
}

class VigenereCipherHome extends StatefulWidget {
  @override
  _VigenereCipherHomeState createState() => _VigenereCipherHomeState();
}

class _VigenereCipherHomeState extends State<VigenereCipherHome> {
  TextEditingController plaintextController = TextEditingController();
  TextEditingController keywordController = TextEditingController();
  String resultText = "";

  final List<Map<String, String>> exampleCiphers = [
    {'ciphertext': 'LXFOPVEFRNHR', 'keyword': 'LEMON', 'description': 'Ciphertext encrypted with the keyword "LEMON"'},
    {'ciphertext': 'RIJVSUYVJN', 'keyword': 'KEY', 'description': 'Ciphertext encrypted with the keyword "KEY"'},
  ];

  void _encryptText() {
    String plaintext = plaintextController.text;
    String keyword = keywordController.text;
    String encryptedText = vigenereEncrypt(plaintext, keyword);
    setState(() {
      resultText = "Encrypted Text: \n\$encryptedText";
    });
  }

  void _decryptText() {
    String ciphertext = plaintextController.text;
    String keyword = keywordController.text;
    String decryptedText = vigenereDecrypt(ciphertext, keyword);
    setState(() {
      resultText = "Decrypted Text: $decryptedText";
    });
  }

  void _showHint() {
    setState(() {
      resultText = "Hint: The Vigenère Cipher uses a keyword to encrypt and decrypt text. Each character of the keyword shifts the corresponding character of the plaintext.";
    });
  }

  void _useExampleCipher(int index) {
    setState(() {
      plaintextController.text = exampleCiphers[index]['ciphertext']!;
      keywordController.text = exampleCiphers[index]['keyword']!;
      resultText = "Example loaded: \n${exampleCiphers[index]['description']}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vigenère Cipher'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: plaintextController,
              decoration: InputDecoration(labelText: 'Enter text (plaintext or ciphertext)'),
            ),
            TextField(
              controller: keywordController,
              decoration: InputDecoration(labelText: 'Enter keyword'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _encryptText,
                  child: Text('Encrypt'),
                ),
                ElevatedButton(
                  onPressed: _decryptText,
                  child: Text('Decrypt'),
                ),
                ElevatedButton(
                  onPressed: _showHint,
                  child: Text('Show Hint'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              resultText,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Text('Example Ciphers:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                for (int i = 0; i < exampleCiphers.length; i++)
                  ElevatedButton(
                    onPressed: () => _useExampleCipher(i),
                    child: Text('Use Example ${i + 1}'),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String vigenereEncrypt(String plaintext, String keyword) {
  StringBuffer encryptedText = StringBuffer();
  int keywordIndex = 0;

  for (int i = 0; i < plaintext.length; i++) {
    String char = plaintext[i];
    if (_isAlphabet(char)) {
      int charOffset = _isUpperCase(char) ? 65 : 97;
      int plainCharIndex = char.codeUnitAt(0) - charOffset;
      int keywordCharIndex = keyword[keywordIndex % keyword.length].toLowerCase().codeUnitAt(0) - 97;

      int encryptedCharIndex = (plainCharIndex + keywordCharIndex) % 26;
      String encryptedChar = String.fromCharCode(encryptedCharIndex + charOffset);
      encryptedText.write(encryptedChar);

      keywordIndex++;
    } else {
      encryptedText.write(char);
    }
  }
  return encryptedText.toString();
}

String vigenereDecrypt(String ciphertext, String keyword) {
  StringBuffer decryptedText = StringBuffer();
  int keywordIndex = 0;

  for (int i = 0; i < ciphertext.length; i++) {
    String char = ciphertext[i];
    if (_isAlphabet(char)) {
      int charOffset = _isUpperCase(char) ? 65 : 97;
      int cipherCharIndex = char.codeUnitAt(0) - charOffset;
      int keywordCharIndex = keyword[keywordIndex % keyword.length].toLowerCase().codeUnitAt(0) - 97;

      int decryptedCharIndex = (cipherCharIndex - keywordCharIndex + 26) % 26;
      String decryptedChar = String.fromCharCode(decryptedCharIndex + charOffset);
      decryptedText.write(decryptedChar);

      keywordIndex++;
    } else {
      decryptedText.write(char);
    }
  }
  return decryptedText.toString();
}

bool _isAlphabet(String char) {
  return RegExp(r'[a-zA-Z]').hasMatch(char);
}

bool _isUpperCase(String char) {
  return RegExp(r'[A-Z]').hasMatch(char);
}
