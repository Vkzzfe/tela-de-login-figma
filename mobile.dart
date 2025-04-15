import 'package:flutter/material.dart';

void main() {
  runApp(const VkzzApp());
}

class VkzzApp extends StatelessWidget {
  const VkzzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VKZZ Studio',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final purple = const Color(0xFFE100FF); // tom de roxo da imagem

    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Seja Bem vindo',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE100FF),
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Acesse sua conta agora mesmo.',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 40),

                // Nome
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.purpleAccent),
                    labelText: 'Nome',
                    labelStyle: TextStyle(color: purple),
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Email
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email, color: Colors.purpleAccent),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: purple),
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),

                // Senha
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock, color: Colors.purpleAccent),
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: purple),
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),

                // Botão CADASTRAR
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(color: purple, width: 1.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: Text(
                    'CADASTRAR',
                    style: TextStyle(
                      color: purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                
              ],
            ),
          ),
        ),
      ),
    );
  }
}