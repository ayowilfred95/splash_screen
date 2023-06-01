import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen/classes/app_mount_list_view.dart';
import 'package:splash_screen/lists/mount_model.dart';
import 'package:splash_screen/pages/details_page.dart';

class AppMountListView extends StatelessWidget {
  const AppMountListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: mountItems.length,
            itemBuilder: (context, index) {
              MountModel currentMount = mountItems[index];
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsPage(currentMount)));
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(currentMount.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        currentMount.name,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Text(
                        currentMount.location,
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
