import 'package:flutter/material.dart';

class NewChatLook extends StatelessWidget {
  const NewChatLook({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(color: Colors.grey),
          ),
        ),
        child: Row(
          children: [
            Container(
              height: 58,
              width: 58,
              margin: const EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/fourthimg.jpg'),
              ),
            ),
             Flexible(
               fit: FlexFit.tight,
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Joshua Nii Mensah',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Text(
                        'Dentist',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'Cross Guild Herbal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
               ),
             ),
            Text('5.0'),
            Icon(Icons.star, color: Colors.orange,),
          ],
        ),
      ),
    );
  }
}
