import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nike_shop/widget/BottomCartSheet.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class ItemBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xfff5f9fd),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              decoration: BoxDecoration(
                  color: Color(0xff475269).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ]),
              child: Row(
                children: [
                  Text(
                    "Add To Cart",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    CupertinoIcons.cart_badge_plus,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              decoration: BoxDecoration(
                  color: Color(0xff475269).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff475269).withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1),
                  ]),
              child: InkWell(
                onTap: (){
              showSlidingBottomSheet(context, builder:(context){
                return SlidingSheetDialog(
                  elevation:8,
                  cornerRadius: 16,
                  builder: (context, state){
                    return BottomCartSheet();
                  }
                );
              });
            },
                child: Icon(
                  Icons.shopping_bag,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ],
        ));
  }
}
