import 'package:flutter/material.dart';

class MRTData {
  final String stime;
  final String etime;
  final String dollar;

  MRTData({@required this.stime, @required this.etime, @required this.dollar});
}

List<MRTData> data = [
  MRTData(stime: "10:00", etime: "10:30", dollar: "\$ 5"),
  MRTData(stime: "11:05", etime: "11:45", dollar: "\$ 10"),
  MRTData(stime: "11:25", etime: "12:30", dollar: "\$ 3"),
];
