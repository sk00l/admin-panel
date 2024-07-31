import 'package:admin_pannel/core/constants/app_color.dart';
import 'package:admin_pannel/presentation/home/bloc/user_details_bloc.dart';
import 'package:admin_pannel/presentation/home/widgets/edit_dialog_container.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ListViewVertical extends StatefulWidget {
  const ListViewVertical({super.key});

  @override
  State<ListViewVertical> createState() => _ListViewVerticalState();
}

class _ListViewVerticalState extends State<ListViewVertical> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
      builder: (context, state) {
        if (state.userDetailsStateEnum == UserDetailsStateEnum.loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.userModelList != null &&
            state.userModelList!.isNotEmpty) {
          return Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Photo',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Name',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Number',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Operation',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Action',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(12),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: state.userModelList!.length,
                itemBuilder: (context, index) {
                  final user = state.userModelList![index];
                  return InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          color: AppColor.backgroundColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    NetworkImage(user.picture ?? ""),
                              ),
                              Text(
                                user.name?.en ?? 'a',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                user.cell.toString(),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                user.email ?? "",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              user.isActive ?? false
                                  ? Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Active',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Inactive',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) => FluidDialog(
                                          rootPage: FluidDialogPage(
                                            alignment: Alignment.center,
                                            builder: (context) =>
                                                EditDialogContainer(
                                              user: user,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      context.read<UserDetailsBloc>().add(
                                          DeleteUser(state.userModelList![index]
                                                  .email ??
                                              ""));
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              user.isAdmin ?? false
                                  ? Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Admin',
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: Colors.red.shade100,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: const Text(
                                        'Not Admin',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        } else if (state.error != null) {
          return Center(
            child: Text(state.error!),
          );
        } else {
          return const Center(
            child: Text("No Data Found"),
          );
        }
      },
    );
  }
}
