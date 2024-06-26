import 'dart:js_interop';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 1강
      // home: Text('안녕')
      // home: Icon(Icons.star)
      // home: Icon(Icons.shop)
      // home: Image.asset('wallpaper_202403_01.jpg')
      // home: Center(
      //   child: Container(width: 50, height: 50, color: Colors.orange)
      // )

      // 2강
      /*
      home: Scaffold(
        //appBar: AppBar(),
        // body: Container(
        //   children: Icon(Icons.star)
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
          ]
        ),
        bottomNavigationBar: BottomAppBar(child:Text('cina'))
      )
       */
      /* 2일차 숙제
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: (Text('앱임', style:TextStyle(color:Colors.white))),
          centerTitle: false,
        ),
        body: Text('안녕'),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone, color:Colors.black87),
                Icon(Icons.message, color:Colors.black87),
                Icon(Icons.contact_page, color:Colors.black87),
              ],
            ),
          ),
        ),
      )
       */

      // 3강
      /*
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:Text('앱임', style: TextStyle(color:Colors.white)),
          centerTitle: false,
          elevation: 2,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity, //150,
            height: 50, color: Colors.blue,
            //child: Text('a')
            // margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
            // decoration: BoxDecoration(
            //   border: Border.all(color: Colors.black)
            // ),
          ),
        )
      )
      */

      // 4강
      /*
        home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 2,
          leading:Icon(Icons.star, color: Colors.white),
          title:Text('앱임', style: TextStyle(color:Colors.white)),
          centerTitle: false,
          actions: [Icon(Icons.star), Icon(Icons.star)]

        ),
         body: SizedBox(
           // child: text('안녕하세요',
          //    style: TextStyle(
          //        color: Color(0xff414141),
          //        fontWeight: FontWeight.w700
          //     )
          // ),
          //  child: Icon(Icons.star)
           child: IconButton( //ElevatedButton(
             icon: Icon(Icons.star), //Text('글자'),
             onPressed: (){},
             //style: ButtonStyle(),
           ),
        ),
      )
            */
      // 4강숙제
      /*
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('금호동3가',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w700,
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.search,
                color: Colors.black87,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.menu,
                color: Colors.black87,
                size: 24,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black87,
                size: 24,
              ),
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                width: 200,
                child: Image.asset(
                  'canon.jpg',
                  width: 160,
                  height: 160,
                  fit: BoxFit.cover,
                )
              ),
              Container(
                  width: 220,
                  height: 160,
                  margin: EdgeInsets.fromLTRB(20, 10, 24, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      const Text(
                        '캐논 DSLR 100D (단렌즈, 충전기 16기가SD 포함)',

                        style:TextStyle(
                          fontSize: 20,
                          color:Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      Text('성동구 행당동, 끌올 10분전',
                          style:TextStyle(
                              fontSize: 14,
                              color:Colors.grey
                          )
                      ),
                      Text('210000원',
                          style:TextStyle(
                            fontSize: 17,
                            color:Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                      Container(
                        height: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.favorite_border, size: 20, color: Colors.grey),
                            Text('4', style:TextStyle(fontSize: 16, color: Colors.grey)),
                          ]
                        )
                      )

                    ]
                  )
                  //child: Text('캐논 DSLR 100D')
              ),
            ],
          ),
        ),
      )*/

      // 5강 - Flexible
      /*
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,),
        body: Row(
          children: [
            Expanded(child:Container(color: Colors.blue)),
            Container(width : 100, color: Colors.green),
            //Flexible(child:Container(color: Colors.blue), flex: 5),
            //Flexible(child:Container(color: Colors.green), flex: 5),
            //Flexible(child:Container(color: Colors.red), flex: 5),
          ]
        )
      ) */
      // 5강 - 4강숙제확인
      /*
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Container(
          height: 150,
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Row(
            children: [
              Image.asset('canon.jpg', width: 150,),
              Expanded(
              //Container(
                //width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('카메라팝니다', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    Text('금호동 3가', style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200)),
                    Text('7000원', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite),
                        Text('4'),
                      ]
                    )
                  ]
                ),
              ),
            ]
          )
        )
      )*/

      // 6강
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,),
        //body: ShopItem(),//a,//ShopItem(),
        body: Container(
          color: Colors.white,
          child: ListView(

            //controller: ,
            children: [
              // Text('안녕'),
              // Text('안녕'),
              // Text('안녕'),

              Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Icon(Icons.account_circle,size: 40),
                    ),
                    Text('홍길동'),
                  ]
              ),
              Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Icon(Icons.account_circle,size: 40),
                    ),
                    Text('홍길동'),
                  ]
              ),
              Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(right:8.0),
                      child: Icon(Icons.account_circle,size: 40),
                    ),
                    Text('홍길동'),
                  ]
              ),
            ]
          ),
        ),
        bottomNavigationBar: bottom(),
      )
    );
  }
}

class ShopItem extends StatelessWidget {
  const ShopItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('안녕'),
    );
  }
}

var a = SizedBox(
  child: Text('안녕'),
);

class bottom extends StatelessWidget {
  const bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
          ),
        ],
      ),
      child: const BottomAppBar(
        height: 70,
        color: Colors.white,
        elevation: 10,

        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone, color:Colors.black87),
              Icon(Icons.message, color:Colors.black87),
              Icon(Icons.contact_page, color:Colors.black87),
            ],
          ),
        ),
      ),
    );
  }
}


