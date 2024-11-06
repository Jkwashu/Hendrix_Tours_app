import 'package:flutter/material.dart';

Color hendrixOrange = const Color.fromRGBO(245, 130, 42, 1);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:hendrixOrange),
        useMaterial3: true,
      ),
      home: const FoodHousingPage(),
    );
  }
}

class FoodHousingPage extends StatelessWidget {
  const FoodHousingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text('Hendrix Tours', style: Theme.of(context).textTheme.displayLarge), 
        backgroundColor: hendrixOrange,
                automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Temporary Container for the map
                Container(
                  width: double.infinity,
                  height: 200, // Adjust height as needed
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(height: 24), // Spacing after the box
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'The Caf',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'The Burrow',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Northside Halls',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Southside Halls',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Apartments',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'The Houses',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
                const SizedBox(height: 16), // Spacing between buttons
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: hendrixOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Residence Life: What To Expect',
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
     bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Back to Home button
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.home),
                  label: const Text(
                    'Back to Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: hendrixOrange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
            // Schedule a Tour button
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add Link Logic
                  },
                  icon: const Icon(Icons.calendar_today),
                  label: const Text(
                    'Plan a Visit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: hendrixOrange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
