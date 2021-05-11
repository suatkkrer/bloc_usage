import 'dart:developer';

import 'package:bloc_usage/CounterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<CounterCubit, int>(
              builder: (context, counter) {
                return Text(
                  "$counter",
                  style: TextStyle(fontSize: 36),
                );
              },
            ),
            RaisedButton(
              onPressed: () {
                context.read<CounterCubit>().addCounter();
              },
              child: Text("Add Counter"),
            ),
            RaisedButton(
              onPressed: () {
                context.read<CounterCubit>().subCounter(2);
              },
              child: Text("Sub Counter"),
            )
          ],
        ),
      ),
    );
  }
}
