import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: HomeToDo(),
    );
  }
}

class HomeToDo extends StatefulWidget{
  @override
  _HomeToDoState createState() => _HomeToDoState();
}

class _HomeToDoState extends State<HomeToDo> {


  @override
  Widget build(BuildContext context) {



    return  Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
        body: Container(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Container(
                  padding: const EdgeInsets.only(
                    top: 80,
                    left: 60,
                    right: 60,
                    bottom: 20,
                  ),
                ),



                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.menu,
                                  size: 30,
                                ),
                              ),),

                            Container(
                              alignment: Alignment.center,
                              child: Text("To Do", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 25)),
                            ),


                            Container(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                ),
                              ),),
                          ],
                        ),
                      ),],),),


    Expanded(child:Container(
    decoration: const BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    )
    ),
    child: Column(
    children: <Widget>[
      const SizedBox(
        height: 30,
      ),
      Container(
        alignment: Alignment.topLeft,
        child: Text("Things to do", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 18)),
      ),
    Container(
    alignment: Alignment.center,
    child: Column (
    children: <Widget>[

                const SizedBox(
                  height: 20,
                ),

                CheckboxListTile(//checkbox positioned at right
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
    controlAffinity: ListTileControlAffinity.leading,
    value: false,
    onChanged: (bool? value) {

    },
    title: Text("to-do-item - 10AM"),
    activeColor: Colors.green[500],
    ),

                SizedBox(
                  height: 5,
                ),
    CheckboxListTile(//checkbox positioned at right
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
    controlAffinity: ListTileControlAffinity.leading,
    value: false,
    onChanged: (bool? value) {

    },
    title: Text("to-do-item - 10AM"),
    activeColor: Colors.green[500],
    ),

    SizedBox(
                  height: 5,
                ),

    CheckboxListTile(//checkbox positioned at right
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
    controlAffinity: ListTileControlAffinity.leading,
    value: false,
    onChanged: (bool? value) {

    },
    title: Text("to-do-item - 10AM"),
    activeColor: Colors.green[500],
    ),

                SizedBox(
                  height: 5,
                ),

    CheckboxListTile(//checkbox positioned at right
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
    controlAffinity: ListTileControlAffinity.leading,
    value: true,
    onChanged: (bool? value) {

    },
    title: Text("to-do-item - 10AM"),
    activeColor: Colors.green[500],
    ),

                SizedBox(
                  height: 5,
                ),

      CheckboxListTile(//checkbox positioned at right
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
        controlAffinity: ListTileControlAffinity.leading,
        value: true,
        onChanged: (bool? value) {

        },
        title: Text("to-do-item - 10AM"),
        activeColor: Colors.green[500],
      ),

                const SizedBox(
                  height: 10,
                ),



      Align(
        alignment: Alignment.bottomRight,
        child: ElevatedButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: Colors.green,
            padding: EdgeInsets.all(15),
          ),
        ),),



    ],
    ),
    ),
    ],
    )
    ),
    ),
              ],
            )
        ),
    );

  }
}