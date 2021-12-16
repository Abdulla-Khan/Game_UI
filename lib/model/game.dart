class Game {
  String bgImg, icon, name, type, desc;
  num score, download, review;
  List<String> img;
  Game(
      {required this.bgImg,
      required this.desc,
      required this.download,
      required this.icon,
      required this.img,
      required this.name,
      required this.review,
      required this.score,
      required this.type});
  static List<Game> geneGame() {
    return [
      Game(
          bgImg: 'assets/images/ori1.jpg',
          desc: 'The little spirit Ori is no stranger to peril',
          download: 384,
          icon: 'assets/images/ori_logo.png',
          img: [
            'assets/images/ori2.jpg',
            'assets/images/ori3.jpg',
            'assets/images/ori4.jpg',
            'assets/images/ori5.jpg'
          ],
          name: 'Ori and The Blind Forest',
          review: 382,
          score: 4.8,
          type: 'Adventure'),
      Game(
          bgImg: 'assets/images/rl1.jpg',
          desc: 'The little spirit Ori is no stranger to peril',
          download: 226,
          icon: 'assets/images/rl_logo.png',
          img: [
            'assets/images/rl2.jpg',
            'assets/images/rl3.jpg',
            'assets/images/rl4.jpg',
            'assets/images/rl5.jpg'
          ],
          name: 'Raymen Legends',
          review: 146,
          score: 4.7,
          type: 'Adventure')
    ];
  }
}
