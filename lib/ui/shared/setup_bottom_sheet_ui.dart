import 'package:hng/app/app.locator.dart';
import 'package:hng/utilities/enums.dart';
import 'package:stacked_services/stacked_services.dart';

import 'bottom_sheets/profile_botton_sheet/custom_user_bottom_sheet_view.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetType.user: (context, sheetRequest, completer) =>
        CustomUserBottomSheetView(request: sheetRequest, completer: completer)
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
