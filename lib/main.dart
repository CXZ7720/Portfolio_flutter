import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Zerogyun.DEV'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void htmlOpenLink(String url) {
    html.window.open(url, '_blank');
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          //상단바와 같은 영역에 가리는 것을 막아줌.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('assets/images/profile.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    '김영균 ',
                    style: TextStyle(
                        fontFamily: 'Noto Sans KR',
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    'Yeonggyun.Kim',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
                width: 150,
                child: Divider(
                  color: Colors.deepPurpleAccent.shade100,
                ),
              ),
              Text(
                '웹 풀스택, Flutter 개발자',
                style: TextStyle(
                  fontFamily: 'Noto Sans KR',
                  color: Colors.purpleAccent,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Card(
                      color: Colors.white,
                      margin:
                          EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              'assets/images/domain.png',
                              width: 80,
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                "국회의 회의는 공개한다. 다만, 출석의원 과반수의 찬성이\n 있거나 의장이 국가의 안전보장을 위하여\n 필요하다고 인정할 때에는\n 공개하지 아니할 수 있다. \n헌법에 의하여 체결·공포된 조약과 일반적으로 승인된 국제법규는\n 국내법과 같은 효력을 가진다. 국회는 의장 1인과 부의장 2인을 선출한다.\n 국가는 재해를 예방하고 그 위험으로부터 국민을 보호하기 위하여 노력하여야 한다.\n 언론·출판은 타인의 명예나 권리 또는 공중도덕이나\n 사회윤리를 침해하여서는 아니된다. 언론·출판이 타인의 명예나\n 권리를 침해한 때에는 피해자는 이에\n 대한 피해의 배상을 청구할 수 있다. 대통령은 국무회의의 의장이 되고,\n 국무총리는 부의장이 된다. ",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: <Widget>[
                              Image.network(
                                'assets/images/android.png',
                                width: 80,
                              ),
                              Container(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "국회의 회의는 공개한다. 다만, 출석의원 과반수의 찬성이\n 있거나 의장이 국가의 안전보장을 위하여\n 필요하다고 인정할 때에는\n 공개하지 아니할 수 있다. \n헌법에 의하여 체결·공포된 조약과 일반적으로 승인된 국제법규는\n 국내법과 같은 효력을 가진다. 국회는 의장 1인과 부의장 2인을 선출한다.\n 국가는 재해를 예방하고 그 위험으로부터 국민을 보호하기 위하여 노력하여야 한다.\n 언론·출판은 타인의 명예나 권리 또는 공중도덕이나\n 사회윤리를 침해하여서는 아니된다. 언론·출판이 타인의 명예나\n 권리를 침해한 때에는 피해자는 이에\n 대한 피해의 배상을 청구할 수 있다. 대통령은 국무회의의 의장이 되고,\n 국무총리는 부의장이 된다. ",
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

/*
             Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal.shade900,
                ),
                title: Text(
                  'kygha7205@zerogyun.dev',
                  style: TextStyle(
                    color: Colors.teal.shade900,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: GestureDetector(
                onTap: () {
                  htmlOpenLink('https://zerogyun.dev');
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.teal.shade900,
                  ),
                  title: Text(
                    'https://zerogyun.dev',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
*
* */
