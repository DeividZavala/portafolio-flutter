import 'package:flutter/material.dart';
import "package:hello_world/models/project.dart";
import 'package:hello_world/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final Project project;
  const ProjectDetail({required this.project, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      bottom: false,
      child: SizedBox(
          width: screenSize.width,
          height: screenSize.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BackButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Text(project.name,
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          child: Text(
                            project.year.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Hero(
                        tag: project.name,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Responsive(
                              mobile:
                                  Image.asset(project.image, fit: BoxFit.cover),
                              tablet:
                                  Image.asset(project.image, fit: BoxFit.cover),
                              desktop: SizedBox(
                                height: 350,
                                child: Image.asset(project.image,
                                    fit: BoxFit.cover),
                              )),
                        )),
                    const SizedBox(height: 15),
                    const Text(
                      "Technologies",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    HorizontalTechView(techList: project.technologies ?? []),
                    const SizedBox(height: 15),
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(project.description,
                        style: const TextStyle(fontSize: 16)),
                  ]),
            ),
          )),
    ));
  }
}

class HorizontalTechView extends StatelessWidget {
  final List<String> techList;
  const HorizontalTechView({required this.techList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: techList.length,
          itemBuilder: (context, index) => Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                    color: Colors.white),
                padding: const EdgeInsets.only(right: 15, left: 15),
                margin: const EdgeInsets.only(right: 15),
                child: Text(techList[index],
                    style: const TextStyle(color: Colors.black)),
              )),
    );
  }
}
