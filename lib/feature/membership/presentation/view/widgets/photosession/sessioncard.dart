import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/membership/presentation/view/widgets/birthdaywidgets/item_card.dart';
class Sessioncard extends StatelessWidget {
  final Item item;
    final Function onIncrement;
  final Function onDecrement;

  const Sessioncard({super.key, required this.item, required this.onIncrement, required this.onDecrement});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: item.count > 0 ? const Color(0xFFF04C29).withOpacity(0.7) : Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        
        leading: Image.network(item.image,fit: BoxFit.fill, width: 50, height: 50), 
        title: Text(item.name,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w400),),
        subtitle: Text('${item.price} LE',style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w700),),
        trailing: SizedBox(
          height: 30.h,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: item.count>0? () => onDecrement():null,
                child:
                item.count>0? Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle
                          
                  ),
                  child: const Icon(Icons.remove,color: Color(0xFFF04C29),),
                  
                ):Container()
              ),
                
                
                Container(child: item.count>0? Text(' ${item.count}',style:TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.w400) ,):null),
              InkWell(
                onTap: () => onIncrement(),
                child: Container(
                  width: 35.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle
                          
                  ),
                  child: const Icon(Icons.add,color: Color(0xFFF04C29),),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}