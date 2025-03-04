import 'package:hng/app/app.locator.dart';
import 'package:hng/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChannelPageViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToChannelInfo() {
    _navigationService.navigateTo(Routes.channelInfoView);
  }

  navigateToAddPeople() {
    _navigationService.navigateTo(Routes.addPeopleView);
  }
}
