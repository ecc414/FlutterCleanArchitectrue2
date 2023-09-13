import 'package:clean_architecture_2/presentation/company_list/company_list_action.dart';
import 'package:clean_architecture_2/presentation/company_list/company_list_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompanyListScreen extends StatelessWidget {
  const CompanyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                onChanged: (query){
                  viewModel.onAction(CompanyListAction.onSearchQueryChange(query));
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2.0),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    labelText: 'search',
                    labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.secondary)),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    viewModel.onAction(const CompanyListAction.refresh());
                  },
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(state.companyList[index].name),
                      );
                    },
                    itemCount: state.companyList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
