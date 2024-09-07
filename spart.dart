// import 'package:drugo/core/utils/app_assets.dart';
// import 'package:drugo/screens/home%20screen/data/model/homescreen_model.dart';
// import 'package:drugo/screens/home%20screen/screens/widgets/drug_card.dart';
// import 'package:drugo/screens/home%20screen/screens/widgets/seach_bar_and_aboutus.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final TextEditingController _searchController = TextEditingController();
//   final FocusNode _focusNode = FocusNode();

//   @override
//   void initState() {
//     super.initState();
//     _focusNode.addListener(_onFocusChange);
//   }

//   @override
//   void dispose() {
//     _focusNode.removeListener(_onFocusChange);
//     _focusNode.dispose();
//     _searchController.dispose();
//     super.dispose();
//   }

//   void _onFocusChange() {
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               backgroundColor: Colors.transparent,
//               expandedHeight: 100,
//               title: Image.asset(
//                 Assets.imagesDrugologo,
//                 height: 40,
//               ),
//             ),
//             SliverToBoxAdapter(
//               child: SearchBarAndAboutUS(
//                   searchController: _searchController, focusNode: _focusNode),
//             ),
//             SliverToBoxAdapter(
//                 child: Column(
//               children: List.generate(homeScreenData.length, (index) {
//                 return DrugCard(
//                   drugiamge: homeScreenData[index].imagePath,
//                   drugtitle: homeScreenData[index].title,
//                   drugprice: homeScreenData[index].price.toString(),
//                 );
//               }),
//             ))
//           ],
//         ),
//       ),

//       // body: SafeArea(
//       //   child: Padding(
//       //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
//       //     child: Column(
//       //       children: [
//       //         verticalSpace(15),
//       //         SearchBarAndAboutUS(
//       //             searchController: _searchController, focusNode: _focusNode),
//       //         verticalSpace(20),
//       //         Expanded(
//       //           child: ListView.builder(
//       //             itemCount: 9,
//       //             prototypeItem: const DrugCard(
//       //                 drugiamge: 'drugiamge',
//       //                 drugtitle: '',
//       //                 drugprice: 'drugprice'),
//       //             itemBuilder: (context, index) {
//       //               return const DrugCard(
//       //                   drugiamge: 'drugiamge',
//       //                   drugtitle: '',
//       //                   drugprice: 'drugprice');
//       //             },
//       //           ),
//       //         )
//       //       ],
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
