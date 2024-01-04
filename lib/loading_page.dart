import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF5C1616),
            Color(0xFF703333),
            Color(0xFF937070),
            Color(0xFF9F8787),

          ],
          end: Alignment.topLeft,
          begin: Alignment.bottomRight,
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children: [
              Positioned(
                top: -55,
                left: -43,
                child: Container(
                  width: 186,
                  height: 187,
                
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ), 
                ),
              ),

              Positioned(
                top: 74,
                left: 43,
                child: Container(
                  width: 111,
                  height: 111,
                
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ), 
                ),
              ),

              Positioned(
                top: 780,
                left: 270,
                child: Container(
                  width: 229,
                  height: 230,
                
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ), 
                ),
              ),

              Positioned(
                top: 840,
                left: 190,
                child: Container(
                  width: 121,
                  height: 122,
                
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA).withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ), 
                ),
              ),

              const Center(
                child: Text('T', 
                        style: TextStyle(
                          fontSize: 200, 
                          color: Colors.white,
                          fontFamily: 'MarckScript')),
              )

            ],
        ),
      ),
    );
  }
}