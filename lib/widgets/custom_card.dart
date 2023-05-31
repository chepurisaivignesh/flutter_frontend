// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:blackcoffer_app/constants.dart';

class CustomCard extends StatelessWidget {
  final bool isProfessional;
  final bool isService;
  const CustomCard({
    Key? key,
    required this.isProfessional,
    required this.isService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Stack(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 36,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.transparent,
                    elevation: 2,
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      tileColor: Colors.white,
                      title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 32,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 48,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Sai Vignesh",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: MyPalatte.dark,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    if (isService == false)
                                      const Text(
                                        "Vijayawada | Student",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyPalatte.light),
                                      ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    if (isService == false)
                                      const Text(
                                        "Within 800-900 m",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: MyPalatte.dark,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: 100,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: LinearProgressIndicator(
                                          value: 0.2,
                                          minHeight: 12,
                                          color: MyPalatte.dark,
                                          backgroundColor: Colors.blueGrey,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    if (isProfessional || isService)
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 18,
                                            backgroundColor: MyPalatte.dark,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.phone,
                                                size: 18,
                                              ),
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          CircleAvatar(
                                            radius: 18,
                                            backgroundColor: MyPalatte.dark,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.person_add_alt_1,
                                                size: 18,
                                              ),
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          if (isService)
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor: MyPalatte.dark,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.location_on,
                                                  size: 18,
                                                ),
                                                color: Colors.white,
                                              ),
                                            ),
                                        ],
                                      ),
                                    const SizedBox(
                                      height: 4,
                                    )
                                  ],
                                )
                              ],
                            )
                          ]),
                      subtitle: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Coffee | Tea | Snacks",
                              style: TextStyle(
                                  color: MyPalatte.dark,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Hi there! I'm a student looking for a place to study and chill. I'm a big fan of coffee and tea. ",
                              style: TextStyle(
                                color: MyPalatte.light,
                              ),
                            )
                          ],
                        ),
                      ),
                      trailing: (isService == false)
                          ? ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                size: 16,
                                color: MyPalatte.dark,
                                weight: 32,
                              ),
                              label: Text(
                                "INVITE",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: MyPalatte.dark,
                                    fontWeight: FontWeight.bold),
                              ),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.white),
                              ),
                            )
                          : SizedBox(
                              width: 1,
                            ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 24,
              child: Card(
                color: Colors.transparent,
                elevation: 24,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blueGrey[300]),
                  child: Text(
                    'AN',
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: MyPalatte.dark),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
