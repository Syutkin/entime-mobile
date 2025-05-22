import 'dart:async';

import 'package:share_plus/share_plus.dart';

abstract interface class IShareProvider {
  Future<void> share(ShareParams params);
}

class ShareProvider implements IShareProvider {
  const ShareProvider();
  
  @override
  Future<void> share(ShareParams params) async {
    await SharePlus.instance.share(params);
  }
}
