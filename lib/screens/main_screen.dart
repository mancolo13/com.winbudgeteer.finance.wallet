import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'tabs/tab1_screen.dart';
import 'tabs/tab2_screen.dart';
import 'tabs/tab3_screen.dart';
import 'tabs/tab4_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    Tab1Screen(),
    Tab2Screen(),
    Tab3Screen(),
    Tab4Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        backgroundColor: AppTheme.surfaceColor,
        indicatorColor: AppTheme.primaryColor.withValues(alpha: 0.2),
        destinations: [
        NavigationDestination(
          icon: const Icon(Icons.pie_chart_outline),
          selectedIcon: const Icon(Icons.pie_chart, color: AppTheme.primaryColor),
          label: 'Budget',
        ),
        NavigationDestination(
          icon: const Icon(Icons.credit_card_outlined),
          selectedIcon: const Icon(Icons.credit_card, color: AppTheme.primaryColor),
          label: 'Expenses',
        ),
        NavigationDestination(
          icon: const Icon(Icons.mail_outline),
          selectedIcon: const Icon(Icons.mail, color: AppTheme.primaryColor),
          label: 'Envelopes',
        ),
        NavigationDestination(
          icon: const Icon(Icons.flag_outlined),
          selectedIcon: const Icon(Icons.flag, color: AppTheme.primaryColor),
          label: 'Goals',
        ),

        ],
      ),
    );
  }
}
