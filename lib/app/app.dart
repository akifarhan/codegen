import 'package:codegen/models/models.dart';
import 'package:codegen/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:codegen/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:codegen/ui/views/home/home_view.dart';
import 'package:codegen/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:codegen/ui/views/settings/settings_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute<User?>(page: SettingsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
