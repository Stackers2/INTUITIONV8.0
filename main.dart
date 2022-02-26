import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final is similar to const, cannot be changed
    return MaterialApp(
        theme: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light().copyWith(
                primary: Colors.lightBlueAccent
            )
        ),
        home: SafeArea(
            child: Scaffold(
          //appBar: AppBar(title: Text("Welcome User")),
          body: BuildBody()
        ))
    );
  }
}

class BuildBody extends StatefulWidget {
  @override
  BuildBodyState createState() => BuildBodyState();
}

class BuildBodyState extends State<BuildBody>{
  Widget _buildList() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        buildColoredCard(),
        buildImageCard(),
        buildSecondCard(),
        buildThirdCard(),
        buildFourthCard(),
        buildFifthCard(),
        //buildSecondImageCard(),
      ]
    );
  }
Widget buildCard() => Card(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Mental illness is nothing to be ashamed of, but stigma and bias shame us all', style: TextStyle(fontSize: 24),),
          const SizedBox(height: 12),
          Text('~Bill Clinton. 77.', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
        ),
      ),
  );

  Widget buildColoredCard() => Card(
    shadowColor: Colors.redAccent,
    elevation: 8,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32)
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.purpleAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Mental illness is nothing to be ashamed of, but stigma and bias shame us all',
            style: TextStyle(
                fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text('~Bill Clinton. 77.', style: TextStyle(fontSize: 20,
              color: Colors.white, fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
  Widget buildImageCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
            children: [
              Ink.image(
                image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/922672217416933390/947143674687553596/stats3.jpg'
                ),
                child: InkWell(
                  onTap: () {},
                ),
                height: 240,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 16,
                right: 16,
                left: 16,
                child: Text(
                  'Mental Health Statistics',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              )
            ],
        ),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'Check out the mental health statistics here with interactive graphs and more. \n\nDescription: Mental fitness is just as important as physical fitness, and shouldn’t be neglected. Including mental dexterity exercises into your daily routine can help you reap the benefits of a sharper mind and a healthier body for years to come. '
              ,
            style: TextStyle(fontSize: 16)
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Learn More...'),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        )
      ],
    ),
  );

  Widget buildSecondCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/922672217416933390/947138674225725451/MindBuddy3.jpg'
              ),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'MindBuddyBot',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
              'This is our Telegram bot which you can speak to. He also has a variety of features and will keep you good company no matter what'
              ,
              style: TextStyle(fontSize: 16)
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Learn More...'),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        )
      ],
    ),
  );

  Widget buildThirdCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/922672217416933390/947141768586084352/5220.jpg'
              ),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Find Friends',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
              'Find friends with similar interests(which you can set) and get to chatting and hanging out!'
              ,
              style: TextStyle(fontSize: 16)
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Learn More...'),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        )
      ],
    ),
  );

  Widget buildFourthCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://cdn.discordapp.com/attachments/922672217416933390/947141338267267113/fitness-myths.jpg'
              ),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Health and Fitness',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
              'Track your diet, BMI and more to help keep you healthy. After all, physical health is mental health, so use this tool to help you stay at the top of your game'
              ,
              style: TextStyle(fontSize: 16)
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Learn More...'),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        )
      ],
    ),
  );

  Widget buildFifthCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24)
    ),
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80'
              ),
              child: InkWell(
                onTap: () {},
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'Resources to help you',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
              'These are resources which can help you with stress and general mental health issues which you may be facing. Remember, you are not alone'
              ,
              style: TextStyle(fontSize: 16)
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Learn More...'),
              onPressed: () {},
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        )
      ],
    ),
  );

  void _pushSaved() {}

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('MindBuddy App')),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.list), onPressed:
              _pushSaved)
          ]

      ),
          body: _buildList());
  }
}
