import '../../entities/overlay_config.dart';
import '../../repositories/overlay/overlay_config_repo.dart';

class GetConfigUseCase{
  late final OverlayConfigRepo repo;

  GetConfigUseCase(this.repo);

  Future<OverlayConfig> call() {
    return repo.getInfoDevice();
  }
}
