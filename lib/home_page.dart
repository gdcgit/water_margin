import 'dart:math';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final random = new Random();
  double circular = 10.0;

  List<FlipDirection> flip = [FlipDirection.HORIZONTAL, FlipDirection.VERTICAL];

  List _imageList = [];
  List _nameList = [];


  @override
  void initState() {

    _imageList = [
      'asset/image/001.jpg',
      'asset/image/002.jpg',
      'asset/image/003.jpg',
      'asset/image/004.jpg',
      'asset/image/005.jpg',
      'asset/image/006.jpg',
      'asset/image/007.jpg',
      'asset/image/008.jpg',
      'asset/image/009.jpg',
      'asset/image/010.jpg',
      'asset/image/011.jpg',
      'asset/image/012.jpg',
      'asset/image/013.jpg',
      'asset/image/014.jpg',
      'asset/image/015.jpg',
      'asset/image/016.jpg',
      'asset/image/017.jpg',
      'asset/image/018.jpg',
      'asset/image/019.jpg',
      'asset/image/020.jpg',
      'asset/image/021.jpg',
      'asset/image/022.jpg',
      'asset/image/023.jpg',
      'asset/image/024.jpg',
      'asset/image/025.jpg',
      'asset/image/026.jpg',
      'asset/image/027.jpg',
      'asset/image/028.jpg',
      'asset/image/029.jpg',
      'asset/image/030.jpg',
      'asset/image/031.jpg',
      'asset/image/032.jpg',
      'asset/image/033.jpg',
      'asset/image/034.jpg',
      'asset/image/035.jpg',
      'asset/image/036.jpg',
      'asset/image/037.jpg',
      'asset/image/038.jpg',
      'asset/image/039.jpg',
      'asset/image/040.jpg',
      'asset/image/041.jpg',
      'asset/image/042.jpg',
      'asset/image/043.jpg',
      'asset/image/044.jpg',
      'asset/image/045.jpg',
      'asset/image/046.jpg',
      'asset/image/047.jpg',
      'asset/image/048.jpg',
      'asset/image/049.jpg',
      'asset/image/050.jpg',
      'asset/image/051.jpg',
      'asset/image/052.jpg',
      'asset/image/053.jpg',
      'asset/image/054.jpg',
      'asset/image/055.jpg',
      'asset/image/056.jpg',
      'asset/image/057.jpg',
      'asset/image/058.jpg',
      'asset/image/059.jpg',
      'asset/image/060.jpg',
      'asset/image/061.jpg',
      'asset/image/062.jpg',
      'asset/image/063.jpg',
      'asset/image/064.jpg',
      'asset/image/065.jpg',
      'asset/image/066.jpg',
      'asset/image/067.jpg',
      'asset/image/068.jpg',
      'asset/image/069.jpg',
      'asset/image/070.jpg',
      'asset/image/071.jpg',
      'asset/image/072.jpg',
      'asset/image/073.jpg',
      'asset/image/074.jpg',
      'asset/image/075.jpg',
      'asset/image/076.jpg',
      'asset/image/077.jpg',
      'asset/image/078.jpg',
      'asset/image/079.jpg',
      'asset/image/080.jpg',
      'asset/image/081.jpg',
      'asset/image/082.jpg',
      'asset/image/083.jpg',
      'asset/image/084.jpg',
      'asset/image/085.jpg',
      'asset/image/086.jpg',
      'asset/image/087.jpg',
      'asset/image/088.jpg',
      'asset/image/089.jpg',
      'asset/image/090.jpg',
      'asset/image/091.jpg',
      'asset/image/092.jpg',
      'asset/image/093.jpg',
      'asset/image/094.jpg',
      'asset/image/095.jpg',
      'asset/image/096.jpg',
      'asset/image/097.jpg',
      'asset/image/098.jpg',
      'asset/image/099.jpg',
      'asset/image/100.jpg',
      'asset/image/101.jpg',
      'asset/image/102.jpg',
      'asset/image/103.jpg',
      'asset/image/104.jpg',
      'asset/image/105.jpg',
      'asset/image/106.jpg',
      'asset/image/107.jpg',
      'asset/image/108.jpg'
    ];

    _nameList = [
      '天魁星 及时雨 宋江',
      '天罡星 玉麒麟 卢俊义',
      '天机星 智多星 吴用',
      '天闲星 入云龙 公孙胜',
      '天勇星 大刀  关胜',
      '天雄星 豹子头 林冲',
      '天猛星 霹雳火 秦明',
      '天威星 双鞭呼  延灼',
      '天英星 小李广 花荣',
      '天贵星 小旋风 柴进',
      '天富星 扑天雕 李应',
      '天满星 美髯公 朱仝',
      '天孤星 花和尚 鲁智深',
      '天伤星 行者 武松',
      '天立星 双枪将 董平',
      '天捷星 没羽箭 张清',
      '天暗星 青面兽 杨志',
      '天佑星 金枪手 徐宁',
      '天空星 急先锋 索超',
      '天速星 神行太保 戴宗',
      '天异星 赤发鬼 刘唐',
      '天杀星 黑旋风 李逵',
      '天微星 九纹龙 史进',
      '天究星 没遮拦 穆弘',
      '天退星 插翅虎 雷横',
      '天寿星 混江龙 李俊',
      '天剑星 立地太岁 阮小二',
      '天平星 船火儿 张横',
      '天罪星 短命二郎 阮小五',
      '天损星 浪里白条 张顺',
      '天败星 活阎罗 阮小七',
      '天牢星 病关索 杨雄',
      '天慧星 拼命三郎 石秀',
      '天暴星 两头蛇 解珍',
      '天哭星 双尾蝎 解宝',
      '天巧星 浪子 燕青',
      '地魁星 神机军师 朱武',
      '地煞星 镇三山 黄信',
      '地勇星 病尉迟 孙立',
      '地杰星 丑郡马 宣赞',
      '地雄星 井木犴 郝思文',
      '地威星 百胜将 韩滔',
      '地英星 天目将 彭纪',
      '地奇星 圣水将 单廷珪',
      '地猛星 神火将 魏定国',
      '地文星 圣手书生 萧让',
      '地正星 铁面孔目 裴宣',
      '地辟星 摩云金翅 欧鹏',
      '地阖星 火眼狻猊 邓飞',
      '地强星 锦毛虎 燕顺',
      '地暗星 锦豹子 杨林',
      '地轴星 轰天雷 凌振',
      '地会星 神算子 蒋敬',
      '地佐星 小温侯 吕方',
      '地佑星 赛仁贵 郭盛',
      '地灵星 神医安 道全',
      '地兽星 紫髯伯 皇甫端',
      '地微星 矮脚虎 王英',
      '地慧星 一丈青 扈三娘',
      '地暴星 丧门神 鲍旭',
      '地默星 混世魔王 樊瑞',
      '地猖星 毛头星 孔明',
      '地狂星 独火星 孔亮',
      '地飞星 八臂哪吒 项充',
      '地走星 飞天大圣 李衮',
      '地巧星 玉臂匠 金大坚',
      '地明星 铁笛仙 马麟',
      '地进星 出洞蛟 童威',
      '地退星 翻江蜃 童猛',
      '地满星 玉幡竿 孟康',
      '地遂星 通臂猿 侯健',
      '地周星 跳涧虎 陈达',
      '地隐星 白花蛇 杨春',
      '地异星 白面郎君 郑天寿',
      '地理星 九尾龟 陶宗旺',
      '地俊星 铁扇子 宋清',
      '地乐星 铁叫子 乐和',
      '地捷星 花项虎 龚旺',
      '地速星 中箭虎 丁得孙',
      '地镇星 小遮拦 穆春',
      '地嵇星 操刀鬼 曹正',
      '地魔星 云里金刚 宋万',
      '地妖星 摸着天 杜迁',
      '地幽星 病大虫 薛永',
      '地伏星 金眼彪 施恩',
      '地僻星 打虎将 李忠',
      '地空星 小霸王 周通',
      '地孤星 金钱豹子 汤隆',
      '地全星 鬼脸儿 杜兴',
      '地短星 出林龙 邹渊',
      '地角星 独角龙 邹润',
      '地囚星 旱地忽律 朱贵',
      '地藏星 笑面虎 朱富',
      '地平星 铁臂膊 蔡福',
      '地损星 一枝花 蔡庆',
      '地奴星 催命判官 李立',
      '地察星 青眼虎 李云',
      '地恶星 没面目 焦挺',
      '地丑星 石将军 石勇',
      '地数星 小尉迟 孙新',
      '地阴星 母大虫 顾大嫂',
      '地刑星 菜园子 张青',
      '地壮星 母夜叉 孙二娘',
      '地劣星 活闪婆 王定六',
      '地健星 险道神 郁保四',
      '地耗星 白日鼠 白胜',
      '地贼星 鼓上蚤 时迁',
      '地狗星 金毛犬 段景住'
    ];

    super.initState();
  }


  /// 绝对定位位置
  List<Alignment> nameAlignment = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomLeft,
    Alignment.bottomRight
  ];

  List<Color> bgColor = [
    Colors.black87,
    Colors.purpleAccent[700],
    Colors.pinkAccent[700],
    Colors.blueAccent[700],
  ];

  Widget _imageBuilder(itemIndex) {
    Alignment alignment = nameAlignment[random.nextInt(3)];
    var seq = itemIndex + 1;

    return FlipCard(
      direction: flip[random.nextInt(2)],
      speed: 900,
      front: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Stack(
              alignment: alignment,
              children: <Widget>[
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(circular),
                    child: Image.asset(
                      _imageList[itemIndex],
                      fit: BoxFit.fill,
                      height: 540,
                    ),
                  ),
                ),
                Container(
                  width: 28,
                  height: 220,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: bgColor[random.nextInt(3)],
                      borderRadius: BorderRadius.only(
                        topLeft: alignment == Alignment.topLeft
                            ? Radius.circular(circular)
                            : Radius.circular(0),
                        topRight: alignment == Alignment.topRight
                            ? Radius.circular(circular)
                            : Radius.circular(0),
                        bottomLeft: alignment == Alignment.bottomLeft
                            ? Radius.circular(circular)
                            : Radius.circular(0),
                        bottomRight: alignment == Alignment.bottomRight
                            ? Radius.circular(circular)
                            : Radius.circular(0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(
                      _nameList[itemIndex],
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Text('$seq'),
          )
        ],
      ),
      back: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(circular),
                gradient: LinearGradient(
                    colors: [Colors.yellow[400], Colors.yellow[200]],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 540,
              child: Center(
                child: Text(
                  _nameList[itemIndex],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('水浒英雄卡'),
      ),
      body: CarouselSlider.builder(
        height: MediaQuery.of(context).size.height,
        viewportFraction: 1.0,
        itemCount: _imageList.length,
        itemBuilder: (BuildContext context, int itemIndex) =>
            _imageBuilder(itemIndex),
      ),
    );
  }
}