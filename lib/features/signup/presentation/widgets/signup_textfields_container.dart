import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/theme/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/usecases/calculate_size.dart';
import '../../../login/presentation/widgets/custom_textfield.dart';
import '../signup_bloc/signup_bloc.dart';

Widget SignupTextfieldsContainer({
  required BuildContext context,
  required TextEditingController firstNameController,
  required TextEditingController lastNameController,
  required TextEditingController emailController,
  required TextEditingController phoneController,
  required TextEditingController passwordController,
  required TextEditingController confirmpasswordController,
}) {
  return BlocBuilder<SignupBloc, SignupState>(
    builder: (context, state) {
      return Column(
        children: [
          CustomTextfield(
            controller: firstNameController,
            text: 'First Name',
            context: context,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: lastNameController,
            text: 'Last Name',
            context: context,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: emailController,
            text: 'Email',
            context: context,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: phoneController,
            text: 'Phone',
            context: context,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: passwordController,
            text: 'Password',
            context: context,
            isHidden: true,
            isPassword: true,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: confirmpasswordController,
            text: 'Confirm Password',
            context: context,
            isHidden: true,
            isPassword: true,
          ),
          Container(
            height: gap * 6,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Wrap(
              children: [
                Text(
                  state is SignupFailure ? state.message : '',
                  textAlign: TextAlign.left,
                  // overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: calculateSize(
                      context,
                      normalText,
                    ),
                    color: ColorsConst.errorColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
