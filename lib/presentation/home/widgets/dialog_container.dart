import 'package:admin_pannel/core/util/extensions/validotors/email_validator.dart';
import 'package:admin_pannel/data/model/user/user_model.dart';
import 'package:admin_pannel/presentation/auth/signup/bloc/signup_bloc.dart';
import 'package:admin_pannel/presentation/common/app_button.dart';
import 'package:admin_pannel/presentation/common/app_text_form_field.dart';
import 'package:admin_pannel/presentation/home/bloc/user_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class DialogContainer extends StatefulWidget {
  const DialogContainer({super.key});

  @override
  State<DialogContainer> createState() => _DialogContainerState();
}

class _DialogContainerState extends State<DialogContainer> {
  bool isAdmin = false;
  bool isActive = false;
  int _currentStep = 0;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  TextEditingController cellController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController eNameController = TextEditingController();
  TextEditingController eRelationController = TextEditingController();
  TextEditingController eNumberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController githubController = TextEditingController();
  TextEditingController linkedinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserDetailsBloc, UserDetailsState>(
      listener: (context, state) {
        if (state.userDetailsStateEnum == UserDetailsStateEnum.success) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('User Added Successfully')));
        } else if (state.userDetailsStateEnum == UserDetailsStateEnum.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("failed to add user ${state.error}")),
          );
        }
      },
      child: Container(
        height: 520,
        width: 560,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Stepper(
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              return Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (_currentStep > 0)
                      AppButton(
                        title: "Back",
                        borderColor: Colors.black,
                        textColorColor: Colors.black,
                        height: 32,
                        width: 68,
                        onTap: details.onStepCancel,
                      ),
                    const Spacer(),
                    if (_currentStep == 2)
                      AppButton(
                        title: "Submit",
                        borderColor: Colors.black,
                        textColorColor: Colors.black,
                        height: 32,
                        width: 68,
                        onTap: () {
                          context.read<UserDetailsBloc>().add(
                                AddUserEvent(
                                  userModel: UserModel(
                                    uid: "",
                                    appliedDate: dateController.text,
                                    picture: '',
                                    viber: int.parse(cellController.text),
                                    whatsapp: int.parse(cellController.text),
                                    cell: int.parse(cellController.text),
                                    email: emailController.text,
                                    address: addressController.text,
                                    github: githubController.text,
                                    linkedIn: linkedinController.text,
                                    bio: bioController.text,
                                    eName: eNameController.text,
                                    eNumber: int.parse(eNumberController.text),
                                    eRelation: eRelationController.text,
                                    isActive: isActive,
                                    isAdmin: isAdmin,
                                    name: NameLocalisedFields(
                                      en: nameController.text,
                                      ne: '',
                                    ),
                                    position: NameLocalisedFields(
                                      en: positionController.text,
                                      ne: '',
                                    ),
                                  ),
                                ),
                              );
                        },
                      )
                    else
                      AppButton(
                        title: "Next",
                        borderColor: Colors.black,
                        textColorColor: Colors.black,
                        height: 32,
                        width: 68,
                        onTap: details.onStepContinue,
                      ),
                  ],
                ),
              );
            },
            type: StepperType.horizontal,
            steps: getSteps(),
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < getSteps().length - 1) {
                setState(() => _currentStep += 1);
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() => _currentStep -= 1);
              }
            },
          ),
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: _currentStep >= 0,
          title: const Text("Basic Info"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: AppTextFormField(
                      textEditingController: emailController,
                      helperText: "Enter Email",
                      validator: emailValidator,
                    ),
                  ),
                  const Gap(22),
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: AppTextFormField(
                      textEditingController: nameController,
                      helperText: "Full Name",
                      // title: "Full Name",
                    ),
                  ),
                  const Gap(22),
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: AppTextFormField(
                      textEditingController: positionController,
                      helperText: "Employee Position",
                      // title: "Posiion",
                    ),
                  ),
                  const Gap(22),
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: AppTextFormField(
                      textEditingController: cellController,
                      helperText: "Phone Number",
                      // title: "Phone Number",
                    ),
                  ),
                ],
              ),
              const Gap(12),
              Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: AppTextFormField(
                      textEditingController: passwordController,
                      helperText: "Password",
                      isSecure: true,
                      // title: "Phone Number",
                    ),
                  ),
                  const Gap(22),
                  SizedBox(
                    width: 200,
                    height: 70,
                    child: AppTextFormField(
                      isDateField: true,
                      textEditingController: dateController,
                      readOnly: true,
                      helperText: "Applied date",
                    ),
                  ),
                  const Gap(22),
                  InkWell(
                    onTap: () {
                      context.read<UserDetailsBloc>().add(PickImage());
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey,
                      child: BlocBuilder<UserDetailsBloc, UserDetailsState>(
                        builder: (context, state) {
                          return CircleAvatar(
                            radius: 48,
                            backgroundImage: state.imageFile == null
                                ? null
                                : FileImage(state.imageFile!),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              const Gap(12),
              BlocBuilder<SignupBloc, SignupState>(
                builder: (context, state) {
                  return AppButton(
                    onTap: () async {
                      context.read<SignupBloc>().add(SignUpRequested(
                          email: emailController.text,
                          password: passwordController.text));
                    },
                    height: 46,
                    width: 80,
                    title: "Add",
                  );
                },
              )
            ],
          ),
        ),
        Step(
          isActive: _currentStep >= 1,
          title: const Text("More Details"),
          content: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 70,
                      width: 250,
                      child: AppTextFormField(
                        textEditingController: eNameController,
                        helperText: "Emergency Contact Name",
                      ),
                    ),
                    const Gap(22),
                    SizedBox(
                      width: 250,
                      height: 70,
                      child: AppTextFormField(
                        textEditingController: eRelationController,
                        helperText: "Emergency Contact Relation",
                        // title: "Full Name",
                      ),
                    ),
                    const Gap(22),
                    SizedBox(
                      width: 250,
                      height: 70,
                      child: AppTextFormField(
                        textEditingController: eNumberController,
                        helperText: "Emergency Contact Number",
                        // title: "Posiion",
                      ),
                    ),
                  ],
                ),
                const Gap(12),
                Column(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 70,
                      child: AppTextFormField(
                        textEditingController: addressController,
                        helperText: "Address",
                        // title: "Phone Number",
                      ),
                    ),
                    const Gap(22),
                    SizedBox(
                      width: 250,
                      height: 162,
                      child: AppTextFormField(
                        inputType: TextInputType.multiline,
                        maxLines: 10,
                        textEditingController: bioController,
                        helperText: "Bio",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Step(
          isActive: _currentStep >= 2,
          title: const Text("Finish"),
          content: Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 250,
                      child: AppTextFormField(
                        textEditingController: githubController,
                        helperText: "Github Profile",
                      ),
                    ),
                    const Gap(12),
                    SizedBox(
                      width: 250,
                      height: 70,
                      child: AppTextFormField(
                        textEditingController: linkedinController,
                        helperText: "linkedIn Profile",
                        // title: "Phone Number",
                      ),
                    ),
                  ],
                ),
                const Gap(20),
                const Divider(),
                Row(
                  children: [
                    Checkbox(
                      value: isAdmin,
                      onChanged: (value) async {
                        if (value == true) {
                          bool? confirm = await showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text("Confirmation"),
                              content: const Text(
                                  "Are you sure you want to make this person an admin?"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Text("No"),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(true);
                                  },
                                  child: const Text("Yes"),
                                ),
                              ],
                            ),
                          );
                          if (confirm == true) {
                            setState(() {
                              isAdmin = true;
                            });
                          } else {
                            setState(() {
                              isAdmin = false;
                            });
                          }
                        } else {
                          setState(() {
                            isAdmin = false;
                          });
                        }
                      },
                    ),
                    const Text("Admin"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: isActive,
                      onChanged: (value) {
                        setState(() {
                          isActive = value ?? false;
                        });
                      },
                    ),
                    const Text("Active"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ];
}
