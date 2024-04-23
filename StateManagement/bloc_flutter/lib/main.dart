import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(), // Create an instance of CounterBloc
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

enum CounterEvent { increment, decrement }


class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // Register the event handler for CounterEvent.increment
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.increment) {
        emit(state + 1); // Emit the new state after incrementing
      }else if (event== CounterEvent.decrement){
        emit(state-1);
      }
    });
  }

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    // This method won't be used as we are handling events using on<CounterEvent>
    throw UnimplementedError();
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, int>(
              builder: (context, count) {
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline6,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterEvent.increment);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: () {
            counterBloc.add(CounterEvent.decrement);
          },
          tooltip: 'Decrement',
          child: const Icon(Icons.remove),
        ),
        ]
      ),
    );
  }
}
