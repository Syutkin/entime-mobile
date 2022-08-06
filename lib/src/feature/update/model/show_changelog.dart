class ShowChangelog {
  String? previousVersion;
  String? currentVersion;
  bool show;

  ShowChangelog({
    this.currentVersion,
    this.previousVersion,
    this.show = false,
  });
}
