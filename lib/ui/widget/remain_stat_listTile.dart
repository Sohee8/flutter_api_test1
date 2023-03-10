import 'package:api_mask/model/store.dart';
import 'package:flutter/material.dart';

class RemainStatListTile extends StatelessWidget {
  final Store store;
  RemainStatListTile(this.store);

  @override
  Widget build(BuildContext context) {
    return _buildRemainStat(store);
  }

  Widget _buildRemainStat(Store store){
    var remainStat = '판매중지';
    var description = '판매중지';
    var color = Colors.black;

    switch(store.remainStat){
      case 'plenty':
        remainStat = '충분';
        description = '100개 이상';
        color = Colors.green;
        break;
      case 'some':
        remainStat = '보통';
        description = '300 ~ 100개';
        color = Colors.yellow;
        break;
      case 'few':
        remainStat = '부족';
        description = '2 ~ 30개';
        color = Colors.red;
        break;
      case 'empty' :
        remainStat = '소진임박';
        description = '1개 이하';
        color = Colors.grey;
        break;
      default:
    }

    return Column(
      children: [
        Text(remainStat,style: TextStyle(color: color, fontWeight: FontWeight.bold),),
        Text(description,style: TextStyle(color: color)),
      ],
    );
  }
}
