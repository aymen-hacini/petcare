class AddEntry {
  final String title;
  final String image;
  final List<AddEntry> children;

  AddEntry(this.title, [this.children = const [], this.image = ""]);
}
