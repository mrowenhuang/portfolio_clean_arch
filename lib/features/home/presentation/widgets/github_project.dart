import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/core/configs/app_color.dart';
import 'package:portfolio/features/home/presentation/bloc/home_bloc.dart';
import 'package:portfolio/features/home/presentation/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

Widget githubProject(BuildContext context) {
  return !Responsive.isDesktop(context)
      ? Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "GitHub Project :",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  if (state is SuccessGetHomeInitialProject) {
                    return Text(
                      state.project.length.toString(),
                      style: TextStyle(fontSize: 26, color: Colors.black45),
                    );
                  }
                  return Text("Something wrong");
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          BlocBuilder<HomeBloc, HomeState>(
            bloc: context.read<HomeBloc>(),
            builder: (context, state) {
              if (state is LoadingGetHomeInitialProject) {
                return Center(
                  child: CircularProgressIndicator(color: Appcolor.primary),
                );
              } else if (state is SuccessGetHomeInitialProject) {
                return SizedBox(
                  height: 500,
                  width: Responsive.isTablet(context) ? 700 : 0,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: state.project.length,
                    padding: EdgeInsets.all(20),
                    itemBuilder: (context, index) {
                      final data = state.project[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 120,
                          decoration: BoxDecoration(
                            color: Appcolor.def,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38,
                                offset: Offset(0, 3),
                                blurRadius: 10,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.title.toString(),
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Text(
                                      data.description.toString(),
                                      maxLines: 4,
                                      textAlign: TextAlign.justify,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Text(
                                  "Explore More",

                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else if (state is FailedGetHomeInitialProject) {
                return Center(child: Text("Failed"));
              }
              return SizedBox();
            },
          ),
        ],
      )
      : Expanded(
        flex: 4,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "GitHub Project :",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is SuccessGetHomeInitialProject) {
                      return Text(
                        state.project.length.toString(),
                        style: TextStyle(fontSize: 26, color: Colors.black45),
                      );
                    }
                    return Text("Something wrong");
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            BlocBuilder<HomeBloc, HomeState>(
              bloc: context.read<HomeBloc>(),
              builder: (context, state) {
                if (state is LoadingGetHomeInitialProject) {
                  return Center(
                    child: CircularProgressIndicator(color: Appcolor.primary),
                  );
                } else if (state is SuccessGetHomeInitialProject) {
                  return Expanded(
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: state.project.length,
                      padding: EdgeInsets.all(20),
                      itemBuilder: (context, index) {
                        final data = state.project[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 120,
                            decoration: BoxDecoration(
                              color: Appcolor.def,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(0, 3),
                                  blurRadius: 10,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.title.toString(),
                                        style: TextStyle(
                                          fontSize: 13,
                                          overflow: TextOverflow.ellipsis,

                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Text(
                                        data.description.toString(),
                                        maxLines: 4,
                                        textAlign: TextAlign.justify,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 20),
                                ElevatedButton(
                                  onPressed: () async {
                                    final Uri url = Uri.parse(
                                      data.link.toString(),
                                    );
                                    if (await canLaunchUrl(url)) {
                                      await launchUrl(
                                        url,
                                        mode: LaunchMode.externalApplication,
                                      );
                                    } else {
                                      ScaffoldMessenger.of(
                                        // ignore: use_build_context_synchronously
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text("Could not launch URL"),
                                        ),
                                      );
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                  child: Text(
                                    "Explore More",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                } else if (state is FailedGetHomeInitialProject) {
                  return Center(child: Text("Failed"));
                }
                return SizedBox();
              },
            ),
          ],
        ),
      );
}
