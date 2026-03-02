
import '../features/data/services/overlays/overlay_service_impl.dart';
import '../features/domain/services/overlay_service.dart';
import '../presentation/bloc/overlay/overlay_bloc.dart';
import 'injection.dart';

void initOverlay() {

  /// Service
  sl.registerLazySingleton<OverlayService>(
        () => OverlayServiceImpl(),
  );

  // /// Bloc
  // sl.registerFactory(
  //       () => OverlayBloc(sl()),
  // );
}