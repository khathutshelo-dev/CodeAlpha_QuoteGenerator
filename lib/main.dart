import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Quote Generator',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const QuoteScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final List<Map<String, String>> _quotes = [
    {
      "text": "The best way to get started is to quit talking and begin doing.",
      "author": "Walt Disney"
    },
    {
      "text": "Success is not in what you have, but who you are.",
      "author": "Bo Bennett"
    },
    {
      "text": "Believe you can and you're halfway there.",
      "author": "Theodore Roosevelt"
    },
    {
      "text": "Do one thing every day that scares you.",
      "author": "Eleanor Roosevelt"
    },
    {
      "text": "Opportunities don't happen. You create them.",
      "author": "Chris Grosser"
    },
    {
      "text": "Don't watch the clock; do what it does. Keep going.",
      "author": "Sam Levenson"
    },
    {
      "text":
          "Hardships often prepare ordinary people for an extraordinary destiny.",
      "author": "C.S. Lewis"
    },
    {
      "text": "Everything you’ve ever wanted is on the other side of fear.",
      "author": "George Addair"
    },
    {
      "text": "Action is the foundational key to all success.",
      "author": "Pablo Picasso"
    },
    {
      "text": "Start where you are. Use what you have. Do what you can.",
      "author": "Arthur Ashe"
    },
    {
      "text":
          "The only limit to our realization of tomorrow is our doubts of today.",
      "author": "Franklin D. Roosevelt"
    },
    {"text": "Dream big and dare to fail.", "author": "Norman Vaughan"},
    {
      "text":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "Confucius"
    },
    {
      "text":
          "You are never too old to set another goal or to dream a new dream.",
      "author": "C.S. Lewis"
    },
    {
      "text": "In the middle of every difficulty lies opportunity.",
      "author": "Albert Einstein"
    },
    {
      "text":
          "Your time is limited, so don’t waste it living someone else’s life.",
      "author": "Steve Jobs"
    },
    {
      "text": "Only those who dare to fail greatly can ever achieve greatly.",
      "author": "Robert F. Kennedy"
    },
    {
      "text":
          "Success usually comes to those who are too busy to be looking for it.",
      "author": "Henry David Thoreau"
    },
    {
      "text":
          "Success is not final, failure is not fatal: It is the courage to continue that counts.",
      "author": "Winston Churchill"
    },
    {
      "text": "I never dreamed about success. I worked for it.",
      "author": "Estee Lauder"
    },
    {
      "text": "Don’t be afraid to give up the good to go for the great.",
      "author": "John D. Rockefeller"
    },
    {
      "text":
          "Success is walking from failure to failure with no loss of enthusiasm.",
      "author": "Winston Churchill"
    },
    {
      "text":
          "If you really look closely, most overnight successes took a long time.",
      "author": "Steve Jobs"
    },
    {
      "text":
          "Try not to become a man of success. Rather become a man of value.",
      "author": "Albert Einstein"
    },
    {
      "text": "The way to get started is to quit talking and begin doing.",
      "author": "Walt Disney"
    },
    {
      "text":
          "The harder you work for something, the greater you’ll feel when you achieve it.",
      "author": "Unknown"
    },
    {
      "text": "Don’t watch the clock; do what it does. Keep going.",
      "author": "Sam Levenson"
    },
    {
      "text": "Great things never come from comfort zones.",
      "author": "Unknown"
    },
    {
      "text": "Push yourself, because no one else is going to do it for you.",
      "author": "Unknown"
    },
    {"text": "Dream it. Wish it. Do it.", "author": "Unknown"},
    {
      "text":
          "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
      "author": "Unknown"
    },
    {
      "text": "The key to success is to focus on goals, not obstacles.",
      "author": "Unknown"
    },
    {
      "text":
          "Keep your face always toward the sunshine—and shadows will fall behind you.",
      "author": "Walt Whitman"
    },
    {
      "text": "Believe in yourself and all that you are.",
      "author": "Christian D. Larson"
    },
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _generateRandomQuote();
  }

  void _generateRandomQuote() {
    setState(() {
      _currentIndex = Random().nextInt(_quotes.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    final quote = _quotes[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random Quote'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '"${quote["text"]}"',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '- ${quote["author"]}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: _generateRandomQuote,
                icon: const Icon(Icons.refresh),
                label: const Text('New Quote'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
