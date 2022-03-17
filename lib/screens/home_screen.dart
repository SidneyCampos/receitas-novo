import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 56, 16, 0),
                child: Text(
                  'Encontre As Melhores Receitas Para Cozinhar.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                          child: Icon(
                            Icons.search,
                            size: 35,
                            color: Colors.black12,
                          ),
                        ),
                        hintText: 'Procurar',
                        hintStyle: TextStyle(
                          color: Colors.black12,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    // child: Container(
                    //   color: Colors.blue,
                    //   height: 58,
                    //   width: 58,
                    // ),
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Icon(Icons.filter_list),
                      constraints: const BoxConstraints.tightFor(
                        width: 56.0,
                        height: 56.0,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      fillColor: Colors.red.shade100,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Todas',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFF5F5F5),
                      ),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 56.0,
                      height: 42.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Colors.redAccent.shade200,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Café',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFF5F5F5),
                      ),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 56.0,
                      height: 42.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Colors.redAccent.shade200,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Almoço',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFF5F5F5),
                      ),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 62.0,
                      height: 42.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Colors.redAccent.shade200,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Jantar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFF5F5F5),
                      ),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 56.0,
                      height: 42.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Colors.redAccent.shade200,
                  ),
                  RawMaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Doces',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFFF5F5F5),
                      ),
                    ),
                    constraints: const BoxConstraints.tightFor(
                      width: 56.0,
                      height: 42.0,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    fillColor: Colors.redAccent.shade200,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 64),
                  children: [
                    Card(
                      color: Colors.red,
                      child: Container(
                        height: 180,
                      ),
                    ),
                    Card(
                      color: Colors.blue,
                      child: Container(
                        height: 180,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.transparent.withOpacity(.20),
              onTap: (value) {
                // Respond to item press.
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Favoritos',
                  icon: Icon(Icons.star),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
