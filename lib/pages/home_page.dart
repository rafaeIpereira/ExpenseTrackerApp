import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Image(
            image: AssetImage(
              'assets/logo_app.png',
            ),
          ),
          title:
              const Text('Home', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(Icons.notifications, size: 32),
                ],
              ),
            )
          ]),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 3,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people,
                    color: Colors.grey,
                  ),
                  label: 'People'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add_chart_rounded,
                    color: Colors.grey,
                  ),
                  label: 'People'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  label: 'People')
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.qr_code_2,
          color: Colors.white,
          size: 40,
        ),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: BarChart(
                BarChartData(
                  barGroups: [
                    BarChartGroupData(x: 0, barRods: [
                      BarChartRodData(toY: 10),
                      BarChartRodData(toY: 15)
                    ]),
                    BarChartGroupData(x: 1, barRods: [
                      BarChartRodData(toY: 12),
                      BarChartRodData(toY: 6)
                    ]),
                    BarChartGroupData(x: 2, barRods: [
                      BarChartRodData(toY: 4),
                      BarChartRodData(toY: 9)
                    ])
                  ],
                  alignment: BarChartAlignment.center,
                  groupsSpace: 50,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Text(
                  'Recent Expense',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 140,
                ),
                Text(
                  'SEE ALL',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, int i) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 32, right: 30),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                      color: Colors.greenAccent,
                                      shape: BoxShape.circle),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  'Grocery',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Column(
                              children: [
                                Text(
                                  '\$12,300',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Grocery',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
