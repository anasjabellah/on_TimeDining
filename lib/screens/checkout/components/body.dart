import 'package:flutter/material.dart';
import "package:on_dining/dataDb/sqldb.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:on_dining/screens/details/components/title_price_rating.dart';

import '../../../utl/constants_colors.dart';


class body extends StatelessWidget {

  SqlDb sqlDb = SqlDb();


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: 80,
            child: Ink(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor ,
              ),
            ),
          ),
          ListView(
            padding: const EdgeInsets.fromLTRB( 16 , 16 , 16 , 16),
            children: [
              Text(
                "My Order",
                style: TextStyle(
                  color: Colors.black ,
                  fontSize: 24 ,
                  fontWeight: FontWeight.bold,
                ) ,
              ),
              const SizedBox(height: 40),
              OrderListItem(
                item: OrderItem(title: "tagin de maroc" , price: 2 , image: "assets/images/chicken-salad-with-vegetables-olives-removebg-preview.png", qty: 2 ),
              ),
              const SizedBox(height: 10,),
              OrderListItem(
                item: OrderItem(title: "tagin de maroc" , price: 10 , image: "assets/images/chicken-salad-with-vegetables-olives-removebg-preview.png", qty: 3 ),
              ),
              const SizedBox(height: 10,),
              OrderListItem(
                item: OrderItem(title: "tagin de maroc" , price: 10 , image: "assets/images/chicken-salad-with-vegetables-olives-removebg-preview.png", qty: 3 ),
              ),
              const SizedBox(height: 20),
              _buildDivider(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 40.0),
                  Text("VAT (10%)"),
                  Spacer(),
                  Text("\$2"),
                  const SizedBox(width: 40.0),
                ],
              ),
              const SizedBox(height: 20),
              _buildDivider(),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 40.0),
                  Text("Total :"),
                  Spacer(),
                  Text("\$42"),
                  const SizedBox(width: 40.0),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow.shade500),
                  ),
                  onPressed: ()  async {
                    int response = await sqlDb.insertData("INSERT INTO 'restaurant' ('name','image')  VALUES ('food back','Noir-Creuset-Casserole-Restaurant-Logo.svg') ");
                    print(response);
                  },
                  child: Text('TextButton'),
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildDivider(){
    return Container(
      height: 2.0,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.green.shade500,
          borderRadius: BorderRadius.circular(5.0)
      ),
    );
  }

}

class OrderItem {
  final String  title ;
  final int qty ;
  final double price ;
  final String image ;

  OrderItem({ required this.title , required this.qty , required this.image , required this.price });

}


class OrderListItem extends StatelessWidget {
  final OrderItem item ;
  const OrderListItem({Key? key , required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            child: Image.network(item.image),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(item.title , style: TextStyle(
                  color: Colors.black ,
                  fontSize: 18.0 ,
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 10.0),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green ,
                      width: 1.0
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  height: 40.0 ,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: (){},
                        iconSize: 18.0,
                        padding: const EdgeInsets.all(2.0),
                          icon: Icon(Icons.remove),
                      ),
                      Text("${ item.qty }" , style: TextStyle(
                        color: Colors.black ,
                        fontWeight: FontWeight.bold ,
                        fontSize: 18.0
                      ),),
                      IconButton(
                        onPressed: (){},
                        iconSize: 18.0,
                        padding: const EdgeInsets.all(2.0),
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Text("\$${item.price * item.qty}" , style: TextStyle(
            color: Colors.green.shade500 ,
            fontSize: 20 ,
            fontWeight: FontWeight.bold ,
          ),)
        ],
      ),
    );
  }
}


