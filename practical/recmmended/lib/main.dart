import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Recommended",
              style: TextStyle(
                  fontSize: 24,
                  color: Color.fromRGBO(0, 91, 135, 1),
                  fontWeight: FontWeight.w800),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            shape: Border(bottom: BorderSide(color: Colors.grey, width: 2)),
          ),
          body: Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: const Text(
                    "Start a new career",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 44,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 91, 135, 1),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          "Data Science",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 44,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(167, 220, 246, 1),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          "Machines Learning",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(0, 91, 135, 1),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 44,
                        alignment: AlignmentDirectional.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(167, 220, 246, 1),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Text(
                          "Apache Spark",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromRGBO(0, 91, 135, 1),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          width: 370,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("assets/back.jpeg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 210,
                                height: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Data Science",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    const Text(
                                      "Havard University",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 136, 135, 135)),
                                    ),
                                    const Text(
                                        "Lorem  amet eget nunc dictun est penatibus mnuns."),
                                    Row(
                                      children: [
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Data science",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Machine Learning",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          width: 370,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("assets/back.jpeg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 210,
                                height: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Data Science",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    const Text(
                                      "Havard University",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 136, 135, 135)),
                                    ),
                                    const Text(
                                        "Lorem  amet eget nunc dictun est penatibus mnuns."),
                                    Row(
                                      children: [
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Data science",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Machine Learning",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          width: 370,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("assets/back.jpeg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 210,
                                height: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "AI & ML",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    const Text(
                                      "Havard University",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 136, 135, 135)),
                                    ),
                                    const Text(
                                        "Lorem  amet eget nunc dictun est penatibus mnuns."),
                                    Row(
                                      children: [
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Data science",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Machine Learning",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          width: 370,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("assets/back.jpeg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 210,
                                height: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Big Data",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    const Text(
                                      "Havard University",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 136, 135, 135)),
                                    ),
                                    const Text(
                                        "Lorem  amet eget nunc dictun est penatibus mnuns."),
                                    Row(
                                      children: [
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Data science",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Machine Learning",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          width: 370,
                          height: 150,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: [
                              Container(
                                width: 120,
                                height: 120,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset("assets/back.jpeg"),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: 210,
                                height: 125,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        "Data Science",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22),
                                      ),
                                    ),
                                    const Text(
                                      "Havard University",
                                      style: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 136, 135, 135)),
                                    ),
                                    const Text(
                                        "Lorem  amet eget nunc dictun est penatibus mnuns."),
                                    Row(
                                      children: [
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Data science",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          color: const Color.fromARGB(
                                              255, 120, 187, 243),
                                          padding: EdgeInsets.all(4),
                                          child: const Text(
                                            "Machine Learning",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w800,
                                                color: Color.fromARGB(
                                                    255, 11, 58, 97)),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
