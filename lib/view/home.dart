import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_eats/view/login.dart';
import 'widgets/popular_category.dart';
import 'widgets/popular_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Rohan Chhetri"),
                accountEmail: const Text("rohan.kshetri.3910@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2020/05/11/15/38/tom-5158824_640.png"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ButtonStyle(elevation: MaterialStatePropertyAll(0)),
                child: const ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Cuisines"),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.dining),
                title: Text("Cuisines"),
              ),
              const ListTile(
                leading: Icon(Icons.search),
                title: Text("Search"),
              ),
              const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Cart"),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              ),
              const ListTile(
                leading: Icon(Icons.delivery_dining),
                title: Text("Orders"),
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("UberEats"),
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade600,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.menu_book)),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ListTile(
                title: Text(
                  "Popular Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                width: Get.size.width,
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    PopularCategoryWidget(
                      image:
                          "https://cdn.pixabay.com/photo/2016/11/06/23/31/breakfast-1804457_640.jpg",
                      cuisine: "Breakfast",
                    ),
                    PopularCategoryWidget(
                      image:
                          "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_640.jpg",
                      cuisine: "Italian",
                    ),
                    PopularCategoryWidget(
                      image:
                          "https://cdn.pixabay.com/photo/2017/10/15/11/41/sushi-2853382_640.jpg",
                      cuisine: "Japanese",
                    ),
                    PopularCategoryWidget(
                      image:
                          "https://cdn.pixabay.com/photo/2022/06/27/05/37/biryani-7286737_640.jpg",
                      cuisine: "Indian",
                    ),
                    PopularCategoryWidget(
                      image:
                          "https://cdn.pixabay.com/photo/2014/01/14/22/14/tacos-245241_640.jpg",
                      cuisine: "Mexican",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              ListTile(
                title: const Text(
                  "Best Deals",
                  style: TextStyle(fontSize: 18),
                ),
                subtitle: const Text("Upto 40% OFF"),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.green.shade500,
                    )),
              ),
              SizedBox(
                width: Get.size.width,
                height: 200,
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 400.0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2)),
                  items: [
                    "https://cdn.pixabay.com/photo/2016/01/22/02/13/meat-1155132_640.jpg",
                    "https://cdn.pixabay.com/photo/2014/01/14/22/13/mexican-245240_640.jpg",
                    "https://cdn.pixabay.com/photo/2022/02/12/15/05/biryani-7009127_640.jpg",
                    "https://cdn.pixabay.com/photo/2017/04/04/03/20/food-2200139_640.jpg",
                    "https://cdn.pixabay.com/photo/2018/07/18/19/12/pasta-3547078_640.jpg"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(
                              i,
                              fit: BoxFit.cover,
                            ));
                      },
                    );
                  }).toList(),
                ),
              ),
              ListTile(
                  title: const Text(
                    "Most Popular",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text("0.99 Delivery Fee"),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.green.shade600,
                      ))),
              const PopularItemWidget(
                image:
                    "https://cdn.pixabay.com/photo/2018/11/19/05/43/bacon-3824661_640.jpg",
                name: "Medditerrian Hummus",
                description:
                    "Middle Eastern dip, spread, or savory dish made from cooked, mashed chickpeas blended with tahini, lemon juice, and garlic.",
                rating: "5.0",
                review: "(15)",
              ),
              const PopularItemWidget(
                image:
                    "https://cdn.pixabay.com/photo/2017/11/13/03/56/grilled-pineapple-pork-burrito-2944562_640.jpg",
                name: "Hot Mexican Burrito",
                description:
                    "Middle Eastern dip, spread, or savory dish made from cooked, mashed chickpeas blended with tahini, lemon juice, and garlic.",
                rating: "4.5",
                review: "(50)",
              )
            ],
          ),
        ),
      ),
    );
  }
}
