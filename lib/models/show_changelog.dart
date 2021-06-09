class ShowChangelog {
  String previousVersion;
  String currentVersion;
  bool show;

  ShowChangelog([
    this.show = false,
    this.previousVersion,
    this.currentVersion,
  ]);
}
