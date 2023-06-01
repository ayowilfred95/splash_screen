import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen/classes/app_mount_list_view.dart';
import 'package:splash_screen/pages/details_bottom_action.dart';
import 'package:splash_screen/pages/details_rating_bar.dart';

// Details Page
// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  MountModel mount;
  DetailsPage(this.mount, {super.key});

  @override
  Widget build(BuildContext context) {
    // create a local variable called selectedItem,
    // and assign to it the mount object at index 0.
    var selectedItem = mount;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(selectedItem.path),
                              fit: BoxFit.cover)),
                    ),
                    Positioned.fill(
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7)
                            ],
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedItem.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            selectedItem.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        iconTheme: const IconThemeData(color: Colors.white),
                        title: const Center(
                          child: Icon(Icons.terrain,
                              color: Colors.white, size: 40),
                        ),
                        actions: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: const Icon(
                              Icons.pending,
                              color: Colors.white,
                              size: 30,
                            ),
                          )
                        ]),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  // Details rating widget
                  const DetailsRatingBar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Text('About ${selectedItem.name}',
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 20),
                          child: Text(
                            // ignore: unnecessary_string_interpolations
                            '${selectedItem.description}',
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // Details bottom action widget
                  const DetailsBottomActions()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
