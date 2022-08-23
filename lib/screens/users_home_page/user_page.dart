import 'package:flutter/material.dart';
import 'package:usfa_v1/screens/users_home_page/user_view_model.dart';
import 'package:usfa_v1/utils/widgets/skeletons/base_page_skeleton.dart';

import '../../utils/helpers/locator_helper.dart';
import '../../utils/widgets/skeletons/view_model_skeleton.dart';

class UserPage extends StatelessWidget {
  UserPage({Key? key}) : super(key: key);

  final UserViewModel _viewModel = getIt<UserViewModel>();
  //final UserViewModel _viewModel = UserViewModel();
  @override
  Widget build(BuildContext context) {
    return ViewModelSkeleton<UserViewModel>(
      builder: (viewModel) => _buildPage(),
      viewModel: _viewModel,
    );
  }

  Widget _buildPage() {
    return BasePageSkeleton(
      child: Center(
          child: ListView.builder(
              itemCount: _viewModel.userData?.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(_viewModel.userData?[index].name ?? ""),
                    subtitle: Text(_viewModel.userData?[index].username ?? ""),
                  ),
                );
              })),
    );
  }
}
