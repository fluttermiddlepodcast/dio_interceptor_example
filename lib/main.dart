import 'package:dio_interceptor_example/data/users_repository.dart';
import 'package:flutter/material.dart';

import 'data/user.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dio Interceptor Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dio Interceptor Example',
        ),
      ),
      body: FutureBuilder<List<User>>(
        future: usersRepository.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final users = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  leading: Image.network(user.picture.thumbnail),
                  title: Text(user.name.toString()),
                  subtitle: Text(user.email),
                );
              },
              itemCount: users.length,
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
