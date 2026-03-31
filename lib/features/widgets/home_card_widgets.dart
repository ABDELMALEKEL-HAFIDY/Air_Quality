import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 248, 248),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xFFEAE8E5),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.home,
                  color: Color(0xFF5D5D5D),
                  size: 20,
                ),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF1F1F1F),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      '◉ Ruthland RD, San Francisco',
                      style: TextStyle(color: Color(0xFFB5AEA7), fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Container(
            height: MediaQuery.heightOf(context) * 0.19,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFDDF15B),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Text(
                  '22',
                  style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 8),
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    'CAQI',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Great air\nhere today',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.35),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
