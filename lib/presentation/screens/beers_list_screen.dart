import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:punk_api_flutter/presentation/providers/beers_list_provider.dart';
import 'package:punk_api_flutter/presentation/screens/beer_detail_screen.dart';
import 'package:punk_api_flutter/presentation/widgets/common/form_text_field.dart';
import 'package:punk_api_flutter/presentation/widgets/logo_app.dart';
import 'package:punk_api_flutter/utils/resources.dart';

class BeersListScreen extends StatelessWidget {
  const BeersListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => BeersListProvider())],
        child: Scaffold(
            appBar: AppBar(
              title: const Text(Resources.titleApp),
              centerTitle: true,
            ),
            body: _BeersListView()));
  }
}

class _BeersListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FocusNode focusNode = FocusNode();
    final beersListProvider = context.watch<BeersListProvider>();
    return Column(
      children: [
        const LogoApp(),
        FormTextField(
            onValue: beersListProvider.onValueChange),
        beersListProvider.beerList.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: beersListProvider.beerList.length,
                  itemBuilder: (context, index) {
                    final beer = beersListProvider.beerList[index];
                    return ListTile(
                      title: Text(beer.name),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(beer.imageUrl),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          focusNode.unfocus();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BeerDetailScreen(
                                        beer: beer,
                                      )));
                        },
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                    );
                  },
                ),
              )
            : const Text(Resources.emptyBeers)
      ],
    );
  }
}
