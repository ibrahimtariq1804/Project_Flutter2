import 'package:flutter/material.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   late PageController _pageController;
  void _onScroll()
  {
    print('sss');
  }
  @override
  void initState()
  {
    _pageController = PageController(
      initialPage: 0, 
    )..addListener(_onScroll);

    super.initState();
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makepage(
            image: 'assets/image/sydney.jpg',
            title: 'SYDNEY',
            description: 'My Name Is Ibrahim Tariq and I Am From Sydney ',
            ),
          makepage(
          image: 'assets/image/UAE.jpg',
          title: 'DUBAI',
          description: 'My Name Is Ibrahim Tariq and I Am From Dubai',
          ),
          makepage(
          image: 'assets/image/newyork.jpg',
          title: 'NEW YORK',
          description: 'My Name Is Ibrahim Tariq and I Am From New York',
          ),
          makepage(
          image: 'assets/image/peakpx (2).jpg',
          title: 'NORWAY',
          description: 'My Name Is Ibrahim Tariq and I Am From Norway',
          ),
        ],
      ),

    );
  }
  Widget makepage({required String image, title, description})
  {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image), 
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3,0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2)
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            SizedBox(
              height: 40,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text('1', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                Text('/4', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold),),
                  
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),
                      Text('4.0', style: TextStyle(color: Colors.white),),
                      Text('(2000)', style: TextStyle(color: Colors.white, fontSize: 13))
                    ],
                   ),
                   SizedBox(
                    height: 30,
                   ),
                   Padding(
                     padding: const EdgeInsets.only(right : 40),
                     child: Text(description, style: TextStyle(color: Colors.white.withOpacity(0.7), height: 2,fontSize: 15),),
                   ),
                   SizedBox(
                    height: 20,
                   ),
                   Text('READ MORE', style: TextStyle(color: Colors.white),),
                 ],
                )
              )
            ],  
          ),
        ),
      ),
    );
  }
}
