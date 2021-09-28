import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}




void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('교통 사고 대처법'),

        ),
        body: Center(
          child: Image.asset("images/health11.gif"),
        ),
      );
    },
  ));
}


void openPage1(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('골절 대처법'),

        ),
        body: Center(
          child:  Image.asset("images/health222.png")
        ),
      );
    },
  ));
}

void openPage2(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('심정지 대처법'),

        ),
        body: Center(
            child:   Image.asset("images/health.jpg")
        ),
      );
    },
  ));
}

void openPage3(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('상처 대처법'),

        ),
        body: Center(
            child:  Image.asset("images/health123.png")
        ),
      );
    },
  ));
}

void openPage4(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('화상 대처법'),

        ),
        body: Center(
            child:  Image.asset("images/health1111.png")
        ),
      );
    },
  ));
}



class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('응급의료어플'),
        centerTitle: true,
      ),
      body: Center(

        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.admin_panel_settings),
              title: Text('교통 사고 대처법'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){openPage(context);},
            ),
            ListTile(
              leading: Icon(Icons.directions_walk),
              title : Text("골절 대처법"),
              trailing: Icon(Icons.navigate_next),
              onTap: (){openPage1(context);},
            ),
            ListTile(
              leading: Icon(Icons.stream),
              title: Text('화상 대처법'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                openPage4(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.accessibility_new_sharp),
              title: Text('심정지 대처법'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                openPage2(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_late),
              title: Text('상처 대처법'),
              trailing: Icon(Icons.navigate_next),
              onTap: (){
                openPage3(context);
              },
            )

          ],
        )
      ),
    );
  }
}
