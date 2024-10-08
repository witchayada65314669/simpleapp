import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String title;
  double amount;
  double height;
  Color color;


  MoneyBox(this.title, this.amount, this.height, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        height: height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: Text(
                NumberFormat("#,###.##").format(amount),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}