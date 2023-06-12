
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:   FloatingActionButton(backgroundColor: Colors.pink.withOpacity(0.7),
        onPressed:(){},child: Icon(Icons.cloud_upload,),),
      appBar: AppBar(
        backgroundColor: Colors.pink.withOpacity(0.6),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
        ),
        leading: Icon(Icons.photo),
        title: Text('Photo Gallery'),
        actions: [Icon(Icons.menu)],
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(16),
                child: Text('Welcome To My Photo Gallery',style: TextStyle(fontSize: 25,color: Colors.pink.withOpacity(0.5)),),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Search for photos',

                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.pink.withOpacity(0.3)
                          )
                      ),focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.pink.withOpacity(0.3)
                      )
                  ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16,),
                      prefixIcon: Icon(Icons.search,color: Colors.pink.withOpacity(0.3),)

                  ),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 28,
                runSpacing: 18,
                children: [
                  for (int i = 1; i <= 6; i++)
                    ElevatedButton(
                      onPressed: () {
                        showSnackBar(context, 'Clicked on photo $i!');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Stack(
                        children: [
                          Image.network(
                            'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx'
                                '8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80g',
                            fit: BoxFit.cover,
                            width: 105,
                            height: 105,
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            right: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              color: Colors.black54,
                              child: Text(
                                'Photo $i Caption',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                ],
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: ListTile(
                  leading: Image.network('https://cdn.wallpapersafari.com/23/72/OaXYRs.jpg'),
                  title: Text('Sample photo 1'),
                  subtitle: Text('Category 1'),
                  tileColor: Colors.pink.withOpacity(0.3),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: ListTile(
                  leading: Image.network('https://cdn.wallpapersafari.com/23/72/OaXYRs.jpg'),
                  title: Text('Sample photo 2'),
                  subtitle: Text('Category 2'),
                  tileColor: Colors.pink.withOpacity(0.3),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: ListTile(
                  leading: Image.network('https://cdn.wallpapersafari.com/23/72/OaXYRs.jpg'),
                  title: Text('Sample photo 3'),
                  subtitle: Text('Category 3'),
                  tileColor: Colors.pink.withOpacity(0.3),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),

            ],

          ),
        ),
      ),


    );
  }
}

void showSnackBar(BuildContext context, String s) {
}