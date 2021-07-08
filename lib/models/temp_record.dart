class TempRecord{
  int timestamp;
  double temp;

  TempRecord({this.timestamp, this.temp}):assert(timestamp != null && temp != null);
}