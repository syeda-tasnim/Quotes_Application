import 'package:flutter/material.dart';
import 'dart:math';

final List<String> _quotes = [
  "The only way to do great work is to love what you do. - Steve Jobs",
  "Strive not to be a success, but rather to be of value. - Albert Einstein",
  "The mind is everything. What you think you become. - Buddha",
  "An unexamined life is not worth living. - Socrates",
  "Your time is limited, don't waste it living someone else's life. - Steve Jobs",
  "Winning isn't everything, but wanting to win is. - Vince Lombardi",
  "I am not a product of my circumstances. I am a product of my decisions. - Stephen Covey",
  "Every child is an artist. The problem is how to remain an artist once he grows up. - Pablo Picasso",
  "You can never cross the ocean until you have the courage to lose sight of the shore. - Christopher Columbus",
  "Either write something worth reading or do something worth writing. - Benjamin Franklin",
  "The only thing we have to fear is fear itself. - Franklin D. Roosevelt",
  "Everything you’ve ever wanted is on the other side of fear. - George Addair",
  "Well done is better than well said. - Benjamin Franklin",
  "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart. - Helen Keller",
  "It is during our darkest moments that we must focus to see the light. - Aristotle",
  "Be yourself; everyone else is already taken. - Oscar Wilde",
  "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe. - Albert Einstein",
  "So many books, so little time. - Frank Zappa",
  "Be the change that you wish to see in the world. - Mahatma Gandhi",
  "In three words I can sum up everything I've learned about life: it goes on. - Robert Frost",
  "If you tell the truth, you don't have to remember anything. - Mark Twain",
  "A friend is someone who knows all about you and still loves you. - Elbert Hubbard",
  "To live is the rarest thing in the world. Most people exist, that is all. - Oscar Wilde",
  "Without music, life would be a mistake. - Friedrich Nietzsche",
  "We accept the love we think we deserve. - Stephen Chbosky",
  "The only impossible journey is the one you never begin. - Tony Robbins",
  "Life is what happens when you're busy making other plans. - John Lennon",
  "The purpose of our lives is to be happy. - Dalai Lama",
  "Get busy living or get busy dying. - Stephen King",
  "You only live once, but if you do it right, once is enough. - Mae West",
  "Many of life’s failures are people who did not realize how close they were to success when they gave up. - Thomas A. Edison",
  "If you want to live a happy life, tie it to a goal, not to people or things. - Albert Einstein",
  "Never let the fear of striking out keep you from playing the game. - Babe Ruth",
  "Life is either a daring adventure or nothing at all. - Helen Keller",
  "You miss 100% of the shots you don’t take. - Wayne Gretzky",
  "Whether you think you can or you think you can’t, you’re right. - Henry Ford",
  "The best revenge is massive success. - Frank Sinatra",
  "The future belongs to those who believe in the beauty of their dreams. - Eleanor Roosevelt",
  "I have learned over the years that when one's mind is made up, this diminishes fear. - Rosa Parks",
  "Do what you can, with what you have, where you are. - Theodore Roosevelt",
  "Dream big and dare to fail. - Norman Vaughan",
  "Dreaming, after all, is a form of planning. - Gloria Steinem",
  "Do or do not. There is no try. - Yoda",
  "The only limit to our realization of tomorrow will be our doubts of today. - Franklin D. Roosevelt",
  "It does not matter how slowly you go as long as you do not stop. - Confucius",
  "Everything has beauty, but not everyone can see. - Confucius",
  "The journey of a thousand miles begins with one step. - Lao Tzu",
  "That which does not kill us makes us stronger. - Friedrich Nietzsche",
  "In the end, it's not the years in your life that count. It's the life in your years. - Abraham Lincoln",
  "Life is really simple, but we insist on making it complicated. - Confucius",
  "Lighten up, just enjoy life, smile more, laugh more, and don’t get so worked up about things. - Kenneth Branagh",
  "Keep smiling, because life is a beautiful thing and there’s so much to smile about. - Marilyn Monroe",
  "The only person you should try to be better than is the person you were yesterday. - Matty Mullins",
  "Believe you can and you’re halfway there. - Theodore Roosevelt",
  "Change your thoughts and you change your world. - Norman Vincent Peale",
  "Act as if what you do makes a difference. It does. - William James",
  "Success usually comes to those who are too busy to be looking for it. - Henry David Thoreau",
  "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
  "Keep your face always toward the sunshine—and shadows will fall behind you. - Walt Whitman",
  "What you do speaks so loudly that I cannot hear what you say. - Ralph Waldo Emerson",
  "Believe in yourself and all that you are. - Christian D. Larson",
  "The harder the conflict, the more glorious the triumph. - Thomas Paine",
  "Start where you are. Use what you have. Do what you can. - Arthur Ashe",
  "Fall seven times and stand up eight. - Japanese Proverb",
  "If opportunity doesn't knock, build a door. - Milton Berle",
  "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart. - Roy T. Bennett",
  "Everything you can imagine is real. - Pablo Picasso",
  "The best way to predict the future is to create it. - Peter Drucker",
  "A champion is defined not by their wins but by how they can recover when they fall. - Serena Williams",
  "You have within you right now, everything you need to deal with whatever the world can throw at you. - Brian Tracy",
  "Opportunities don't happen. You create them. - Chris Grosser",
  "Don’t count the days, make the days count. - Muhammad Ali",
  "The secret of getting ahead is getting started. - Mark Twain",
  "Hardships often prepare ordinary people for an extraordinary destiny. - C.S. Lewis",
  "The only true wisdom is in knowing you know nothing. - Socrates",
  "To be, or not to be, that is the question. - William Shakespeare",
  "If you look at what you have in life, you'll always have more. - Oprah Winfrey",
  "We may encounter many defeats but we must not be defeated. - Maya Angelou",
  "The way to get started is to quit talking and begin doing. - Walt Disney",
  "Challenges are what make life interesting; overcoming them is what makes life meaningful. - Joshua J. Marine",
  "Innovation distinguishes between a leader and a follower. - Steve Jobs",
  "It always seems impossible until it's done. - Nelson Mandela",
  "Always do your best. What you plant now, you will harvest later. - Og Mandino",
  "Perfection is not attainable, but if we chase perfection we can catch excellence. - Vince Lombardi",
  "The future starts today, not tomorrow. - Pope John Paul II",
  "Do not go where the path may lead, go instead where there is no path and leave a trail. - Ralph Waldo Emerson",
  "Keep your eyes on the stars, and your feet on the ground. - Theodore Roosevelt",
  "A goal without a plan is just a wish. - Antoine de Saint-Exupéry",
  "The best time to plant a tree was 20 years ago. The second best time is now. - Chinese Proverb",
  "The only way to have a friend is to be one. - Ralph Waldo Emerson",
  "Happiness is not something ready-made. It comes from your own actions. - Dalai Lama",
  "It is never too late to be what you might have been. - George Eliot",
  "In the middle of difficulty lies opportunity. - Albert Einstein",
  "What lies behind us and what lies before us are tiny matters compared to what lies within us. - Ralph Waldo Emerson",
  "To handle yourself, use your head; to handle others, use your heart. - Eleanor Roosevelt",
  "Don’t let yesterday take up too much of today. - Will Rogers",
  "The best dreams happen when you’re awake. - Cherie Gilderbloom",
  "A person who never made a mistake never tried anything new. - Albert Einstein",
  "You are never too old to set another goal or to dream a new dream. - C.S. Lewis",
  "Success is not final, failure is not fatal: it is the courage to continue that counts. - Winston Churchill",
];

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Quote App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: Colors.grey[300],
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const QuoteHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuoteHomePage extends StatefulWidget {
  const QuoteHomePage({super.key});

  @override
  State<QuoteHomePage> createState() => _QuoteHomePageState();
}

class _QuoteHomePageState extends State<QuoteHomePage> {
  String _currentQuote = "Tap the button below to get an inspiring quote!";
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
  }

  void _generateNewQuote() {
    if (_quotes.isEmpty) return;

    int randomIndex = _random.nextInt(_quotes.length);
    setState(() {
      _currentQuote = _quotes[randomIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Quote Generator'),
          elevation: 2.0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 6.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 35.0),
                    constraints: const BoxConstraints(minHeight: 150),
                    alignment: Alignment.center,
                    child: Text(
                      _currentQuote,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[800],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: _generateNewQuote,
                  icon: const Icon(Icons.sync),
                  label: const Text('Generate New Quote'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    elevation: 4.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
