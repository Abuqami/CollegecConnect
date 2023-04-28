import 'package:flutter/material.dart';

class CoursesMaterialsPage extends StatelessWidget {
  const CoursesMaterialsPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 42.0,
        ),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: ((context, index) => Materials(
                  title: title,
                ))),
      ),
    );
  }
}

class Materials extends StatelessWidget {
  Materials({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120.0,
          width: 6.0,
          margin: EdgeInsets.only(
            bottom: 10.0,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                8.0,
              ),
              bottomLeft: Radius.circular(
                8.0,
              ),
            ),
            color: Colors.deepPurple,
          ),
        ),
        Container(
          height: 120.0,
          margin: EdgeInsets.only(
            bottom: 10.0,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10.0,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
            color: Colors.grey.withOpacity(
              .2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Programming in $title",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'Images/Ai.png',
                          width: 60,
                          height: 100,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit.",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: ((context) => AlertDialog(
                                insetPadding: EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                scrollable: true,
                                backgroundColor: Colors.grey.withOpacity(
                                  .8,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                content: Column(children: [
                                  Text(
                                    " Programming in $title Related Content.",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 48.0,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(
                                        .8,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                        40.0,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TextField(
                                            onChanged: (value) {},
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Type something...",
                                              hintStyle: TextStyle(
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.search_rounded,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 36.0,
                                  ),
                                  Column(
                                    children: [
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                      Material(),
                                    ],
                                  )
                                ]))));
                      },
                      child: Expanded(
                        child: Image.asset(
                          'Images/Arrow_right.png',
                          width: 16.0,
                          height: 16.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Material extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 8.0,
      ),
      margin: EdgeInsets.only(
        bottom: 16.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Image.asset(
            'Images/Youtube.png',
            width: 50,
            height: 50,
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Aliquam tincidunt mauris eu risus.",
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600),
              ),
              Text(
                "Mohammed Alaqeel",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
