import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatisticsWidget extends StatefulWidget {
  final String total;
  final double progress;

  const StatisticsWidget({Key? key, required this.total, required this.progress}) : super(key: key);

  @override
  State<StatisticsWidget> createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Общий доход", style: TextStyle(fontSize: 16, color: Color(0xFF383874))),
                  Row(
                    children: [
                      Text("\u0024${widget.total}",
                          style: const TextStyle(fontSize: 24, color: Color(0xFF383874), fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Icon(
                          Icons.arrow_drop_up,
                          color: Color(0xFF00B929),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 14),
                        child: Text("10%", style: TextStyle(fontSize: 14, color: Color(0xFF00B929))),
                      ),
                    ],
                  ),
                  const Text("Compared to \u002421,490 last year",
                      style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Январь", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                        Text("681", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 5,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: widget.progress,
                          valueColor: const AlwaysStoppedAnimation(Color(0xFF2D9CDB)),
                          backgroundColor: const Color(0xffDBDFF1),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Февраль", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                        Text("600", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 5,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: widget.progress,
                          valueColor: const AlwaysStoppedAnimation(Color(0xFF2D9CDB)),
                          backgroundColor: const Color(0xffDBDFF1),
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Март", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                        Text("400", style: TextStyle(fontSize: 14, color: Color(0xFF383874))),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      height: 5,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: LinearProgressIndicator(
                          value: widget.progress,
                          valueColor: const AlwaysStoppedAnimation(Color(0xFF2D9CDB)),
                          backgroundColor: const Color(0xffDBDFF1),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
