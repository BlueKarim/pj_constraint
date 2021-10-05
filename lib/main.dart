import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  List text =['DO','RE','MI','FA','SON','LA','SI'];
  String _do = 'DO';
  String _re = 'RE';
  String _mi = 'MI';
  String _fa = 'FA';
  String _son = 'SON';
  String _la = 'LA';
  String _si = 'SI';
  final AudioCache _audioCache = AudioCache(); 

  void btnTapped(){
    if(text[0]==_do)
    {
      _audioCache.play('audios/noteDo.wav');
    }
    else if(text[1] == _re)
    {
      _audioCache.play('audios/noteRE.wav');
    }
    else if(text[2] == _mi)
    {
      _audioCache.play('audios/noteMI.wav');
    }
    else if(text[3] == _fa)
    {
      _audioCache.play('audios/noteFA.wav');
    }
    else if(text[4] == _son)
    {
      _audioCache.play('audios/noteSON.wav');
    }
    else if(text[5] == _la)
    {
      _audioCache.play('audios/noteLA.wav');
    }
    else if(text[6] == _si)
    {
      _audioCache.play('audios/noteSI.wav');
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
          backgroundColor: Colors.teal[400],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_do),
                      style: TextButton.styleFrom(
                        minimumSize: Size(100, 100),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_re),
                      style: TextButton.styleFrom(
                        minimumSize: Size(95, 95),
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_mi),
                      style: TextButton.styleFrom(
                        minimumSize: Size(90, 90),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(40, 0, 40, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_fa),
                      style: TextButton.styleFrom(
                        minimumSize: Size(85, 85),
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(50, 0, 50, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_son),
                      style: TextButton.styleFrom(
                        minimumSize: Size(80, 80),
                        backgroundColor: Colors.purple,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(60, 0, 60, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_la),
                      style: TextButton.styleFrom(
                        minimumSize: Size(75, 75),
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                )
              ),
              Expanded(
                child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(70, 0, 70, 10),
                    child: ElevatedButton(
                      onPressed: btnTapped,
                      child: Text(_si),
                      style: TextButton.styleFrom(
                        minimumSize: Size(70, 70),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                )
              )
            ],
          ),),
        ),
    );
  }
}
