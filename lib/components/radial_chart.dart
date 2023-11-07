import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:bmi_calculator/constants.dart';

Widget getRadialGauge({required double bmi}) {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 50,
        axisLabelStyle: const GaugeTextStyle(color: Colors.white),
        ranges: <GaugeRange>[
          GaugeRange(
              startValue: 0,
              endValue: 16,
              color: Colors.blueAccent,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 16,
              endValue: 18.5,
              color: Colors.blue[200],
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 18.5,
              endValue: 25,
              color: Colors.green,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 25,
              endValue: 30,
              color: Colors.lightGreenAccent,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 30,
              endValue: 35,
              color: Colors.yellow,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 35,
              endValue: 40,
              color: Colors.orange,
              startWidth: 10,
              endWidth: 10),
          GaugeRange(
              startValue: 40,
              endValue: 50,
              color: Colors.red,
              startWidth: 10,
              endWidth: 10)
        ],
        pointers: <GaugePointer>[
          NeedlePointer(
            value: bmi,
            needleColor: Colors.white,
            enableAnimation: true,
          ),
        ],
        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
              widget: Container(
                child: Text(
                  bmi.toStringAsFixed(1),
                  style: kNumberTextStyle,
                ),
              ),
              angle: 90,
              positionFactor: 0.5),
        ],
      ),
    ],
  );
}
