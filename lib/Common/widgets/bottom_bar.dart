// import 'package:flutter/material.dart';
// // import 'package:nexamart/constants/global_variables.dart';
// import 'package:badges/badges.dart' as badges;
// import 'package:nexamart_admin/constants/global_variables.dart';
// import 'package:nexamart_admin/provider/user_provider.dart';
// // import 'package:nexamart/features/account/screens/account_screen.dart';
// // import 'package:nexamart/features/cart/screens/cart_screen.dart';
// // import 'package:nexamart/features/home/screens/home_screen.dart';
// // import 'package:nexamart/provider/user_provider.dart';
// import 'package:provider/provider.dart';
//
// class BottomBar extends StatefulWidget {
//   static const String routeName = '/actual-home';
//   const BottomBar({super.key});
//
//   @override
//   State<BottomBar> createState() => _BottomBarState();
// }
//
// class _BottomBarState extends State<BottomBar> {
//   int _page = 0;
//   double bottomBarWidth = 42;
//   double bottomBarBorderWidth = 5;
//
//   List<Widget> pages = [
//     const HomeScreen(),
//     const AccountScreen(),
//     const CartScreen(),
//   ];
//
//   void updatePage(int page) {
//     setState(() {
//       _page = page;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final userCartLen = context.watch<UserProvider>().user.cart.length;
//     return Scaffold(
//       body: pages[_page],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _page,
//         selectedItemColor: GlobalVariables.backgroundColor,
//         unselectedItemColor: GlobalVariables.unselectedNavBarColor,
//         backgroundColor: GlobalVariables.selectedNavBarColor,
//         iconSize: 28,
//         onTap: updatePage,
//         items: [
//           BottomNavigationBarItem(
//               icon: Container(
//                 width: bottomBarWidth,
//                 decoration: BoxDecoration(
//                   border: Border(
//                     top: BorderSide(
//                       color: _page == 0
//                           ? GlobalVariables.backgroundColor
//                           : GlobalVariables.selectedNavBarColor,
//                       width: bottomBarBorderWidth,
//                     ),
//                   ),
//                 ),
//                 child: const Icon(Icons.home_outlined),
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Container(
//                 width: bottomBarWidth,
//                 decoration: BoxDecoration(
//                   border: Border(
//                     top: BorderSide(
//                       color: _page == 1
//                           ? GlobalVariables.backgroundColor
//                           : GlobalVariables.selectedNavBarColor,
//                       width: bottomBarBorderWidth,
//                     ),
//                   ),
//                 ),
//                 child: const Icon(Icons.person_outline),
//               ),
//               label: ''),
//           BottomNavigationBarItem(
//               icon: Container(
//                   width: bottomBarWidth,
//                   decoration: BoxDecoration(
//                     border: Border(
//                       top: BorderSide(
//                         color: _page == 2
//                             ? GlobalVariables.backgroundColor
//                             : GlobalVariables.selectedNavBarColor,
//                         width: bottomBarBorderWidth,
//                       ),
//                     ),
//                   ),
//                   child: badges.Badge(
//                     badgeContent: Text(
//                       userCartLen.toString(),
//                     ),
//                     badgeStyle:
//                         const badges.BadgeStyle(badgeColor: Colors.white),
//                     child: const Icon(Icons.shopping_cart_outlined),
//                   )),
//               label: ''),
//         ],
//       ),
//     );
//   }
// }