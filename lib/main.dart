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
            description: 'sydney, Australia’s bustling capital, is known for its iconic landmarks like the Sydney Opera House and Harbour Bridge. With stunning beaches, a vibrant arts scene, and a rich blend of history and modern culture, it’s a city that offers something for everyone—from scenic harbor views to dynamic urban experiences.',
            page: '1',
            count: '4.0'
            ),
          makepage(
          image: 'assets/image/UAE.jpg',
          title: 'DUBAI',
          description: 'Dubai, a gleaming metropolis in the UAE, is famous for its futuristic skyline, luxury shopping, and world-class attractions like the Burj Khalifa and Palm Jumeirah. Known for blending modern innovation with rich cultural heritage, Dubai offers a unique mix of towering skyscrapers, desert adventures, and vibrant markets.',
          page: '2',
          count: '5.0'
          ),
          makepage(
          image: 'assets/image/newyork.jpg',
          title: 'NEW YORK',
          description: 'New York City, the "Big Apple," is a global hub of culture, art, and business, renowned for its iconic landmarks like the Statue of Liberty, Times Square, and Central Park. With its bustling streets, diverse neighborhoods, and vibrant energy, New York offers endless experiences, from world-class museums and Broadway shows to unique culinary adventures.',
          page: '3',
          count: '3.0'
          ),
          makepage(
          image: 'assets/image/peakpx (2).jpg',
          title: 'NORWAY',
          description: 'Norway, a Scandinavian gem, is known for its breathtaking natural landscapes, from stunning fjords and towering mountains to the magical Northern Lights. With a rich Viking history and a strong commitment to sustainability, Norway blends tradition with modern living. Its picturesque cities, like Oslo and Bergen, offer a mix of cultural experiences and outdoor adventures.',
          page: '4',
          count: '4.0'
          ),
        ],
      ),

    );
  }
  Widget makepage({required String image, title, description, required String page, required String count})
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
                Text(page, style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
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
                      for(int i=0;i<(title=='SYDNEY'? 4:title=='NEW YORK'? 3:title=='DUBAI'? 5:5);i++)
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Icon(Icons.star, color: Colors.yellow, size: 15,),
                      ),

                      Text(count, style: TextStyle(color: Colors.white),),

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

                    SizedBox(
                    height: 30,
                   ),

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
