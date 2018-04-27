import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main(){
  debugPaintSizeEnabled = false;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
      Widget titleSection = new Container(padding: const EdgeInsets.all(32.0) ,
      child: new Row(children: <Widget>[new Expanded(child: new Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[new Container(padding: const EdgeInsets.only(bottom: 8.0) ,
      child: new Text('这是土匪来的' , style: new TextStyle(fontWeight: FontWeight.bold)))
      , new Text('我是最下面的一行' , style: new TextStyle(fontWeight: FontWeight.bold))])) ,
      new Icon(Icons.star , color: Colors.red) , new Text("41")]));

      Column buildButtonColumn(IconData icon , String label)
      {
        Color color = Theme.of(context).primaryColor;
        Column buildButtonColumns = new Column(mainAxisSize: MainAxisSize.min ,
            crossAxisAlignment: CrossAxisAlignment.center , children: <Widget>[new Icon(icon , color: color),
            new Container(margin: const EdgeInsets.only(top: 8.0) ,
                child: new Text(label , style: new TextStyle(fontSize: 12.0 , fontWeight: FontWeight.w400 , color: color)))]);
        return buildButtonColumns;
      }

      Widget buttonSection = new Container(
        // 然后在行的主轴方向通过 MainAxisAlignment.spaceEvenly 平均的分配每个列占据的行空间
        child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly , children: <Widget>[
          buildButtonColumn(Icons.call , "电话"),
          buildButtonColumn(Icons.near_me , "角色"),
          buildButtonColumn(Icons.share , "分享")]));


      Widget textSection = new Container(
        padding: const EdgeInsets.all(12.0),
        child: new Text("好读书，不求甚解；每有会意，便欣然忘食。”“不求甚解”一语，未宜误解。冯钝吟《杂录》曰：“陶公读书，止观大意，不求甚解。所谓甚解者，如郑康成之《礼》、毛公之《诗》也。世人读书，正苦大意未通耳；乃云吾师渊明，不惟自误，更以误人。” 渊明妙造自然，故不穷难尽之理、不究训诂之极以自苦，于其所善，固已云“每有会意，便欣然忘食”矣。若一向走马看花，都不措意，尚能意有所会至于欣然忘食乎？孔子曰：“学而时习之”，又曰：“温故而知新”，韦编三绝，尚欲假年以学《易》，知书之必精研而覃思然后有得也妙在迭字，一也，妙在有层次，二也，妙在曲尽思妇之情，三也。良人既已行矣，而心似有未信其即去者，用以“寻寻” 。寻寻之未见也，而心似仍有未信其便去者，用又“觅觅”；觅者，寻而又细察之也。觅觅之终未有得，是良人真个去矣，闺闼之内，渐以“冷冷”；冷冷，外也，非内也。继而“清清”，清清，内也，非复外矣。又继之以“凄凄”，冷清渐蹙而凝于心。又继之以“惨惨”，凝于心而心不堪任。故终之以“戚戚”也，则肠痛心碎，伏枕而泣矣。似此步步写来，自疑而信，由浅入深，何等层次，几多细腻！不然，将求叠字之巧，必贻堆砌之讥，一涉堆砌，则叠字不足云巧矣。故觅觅不可改在寻寻之上，冷冷不可移植清清之下，而戚戚又必居最末也。且也，此等心情，惟女儿能有之，此等笔墨，惟女儿能出之。设使其征人为女，居者为男，吾知其破题儿便已确信伊人之不在迩也，当无寻寻觅觅之事，男儿之心粗故也。能词之士，多昂藏丈夫勉学莺莺燕燕者，故不能下如此之十四叠字耳" , softWrap: true));

//      // 水平的图片排列
//      return new MaterialApp(home: new Scaffold(appBar: new AppBar(title: new Text("图片")) ,
//      body: new Center(child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: <Widget>[new Image.asset('images/pic1.jpg') ,
//                          new Image.asset('images/pic2.jpg', width: 400.0 , height: 400.0),
//                          new Image.asset('images/pic3.jpg')]))));
      // 垂直的图片排列
//        return new MaterialApp(home: new Scaffold(appBar: new AppBar(title: new Text("图片横摆")),
//                                body: new Center(child: new Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
//                                      children: <Widget>[
//                                        new Image.asset('images/pic1.jpg' , width: 400.0 , height: 400.0),
//                                        new Image.asset('images/pic2.jpg', width: 400.0 , height: 400.0),
//                                        new Image.asset('images/pic3.jpg', width: 400.0 , height: 400.0)]))));
        // 类似商城的页面
//      return new MaterialApp(
//        home: new Scaffold(appBar: new AppBar(title: new Text("美景")) ,
//                            body: new ListView(children: <Widget>[new Image.asset('images/lake.jpg' , width: 600.0 , height: 240.0 ,
//                            fit: BoxFit.cover) , titleSection , buttonSection , textSection])));

    // 水平的图片排列（中间是大图）
//    return new MaterialApp(home: new Scaffold(appBar: new AppBar(title: new Text("图片")) ,
//        body: new Center(child: new Row(mainAxisSize: MainAxisSize.min , mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: <Widget>[new Expanded(child: new Image.asset('images/pic1.jpg')) ,
//                                  new Expanded(flex: 2 ,
//                                      child: new Image.asset('images/pic2.jpg')),
//                                  new Expanded(child: new Image.asset('images/pic3.jpg'))]))));
      return new MyHomePage(title: "我天下第一");

  }
}

class MyHomePage extends StatefulWidget
{
    final String title;
    MyHomePage({Key key , this.title}):super(key:key);
    @override
    _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
    @override
  Widget build(BuildContext context)
  {
    var imageDesc = new Image.asset('images/lake.jpg' , fit: BoxFit.cover);

    var titleText = new Container(padding: const EdgeInsets.all(20.0) ,
                                 child: new Text("Strawberry Pavlova" , style: new TextStyle(fontSize: 30.0  , height: 2.0 ,
                                                  fontFamily: 'Helvetica' , fontWeight: FontWeight.w800 , letterSpacing: 0.5)));
    var subText = new Text("Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream."
                              , softWrap: true , style: new TextStyle(fontSize: 18.0 , fontWeight: FontWeight.w400 , height: 2.0 ,
                                                              fontFamily: 'Roboto'));
    
    var appStars = new Container(padding: const EdgeInsets.all(20.0) ,
        child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[new Row(mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Icon(Icons.star , color: Colors.blue),
                  new Icon(Icons.star , color: Colors.blue),
                  new Icon(Icons.star , color: Colors.blue),
                  new Icon(Icons.star , color: Colors.blue),
                  new Icon(Icons.star , color: Colors.blue),
                  new Icon(Icons.star , color: Colors.blue)
                ]) , new Text('170 Reviews' , style: new TextStyle(color: Colors.black ,
                fontWeight: FontWeight.w800 ,
                fontSize: 20.0 ,
                letterSpacing: 0.5 ,
                fontFamily: 'Roboto'))]));

    var descTextStyle = new TextStyle(color: Colors.black , fontSize: 20.0 ,
        height: 2.0 , fontWeight: FontWeight.w800 ,
        letterSpacing: 0.5 , fontFamily: 'Roboto');

    var iconList = DefaultTextStyle.merge(style: descTextStyle , child: new Container(padding: const EdgeInsets.all(20.0) ,
                                            child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                                    children: <Widget>[
                                                      new Column(children: <Widget>[new Icon(Icons.kitchen , color: Colors.green[500]) ,
                                                      new Text("PREP:") ,
                                                      new Text("25 min")]) ,

                                                      new Column(children: <Widget>[new Icon(Icons.timer , color: Colors.green[500]) ,
                                                      new Text("COOK:") ,
                                                      new Text("1 hr")]) ,

                                                      new Column(children: <Widget>[new Icon(Icons.restaurant , color: Colors.green[500]) ,
                                                      new Text("PREP:") ,
                                                      new Text("4-6")])])));
    

    return new MaterialApp(home: new Scaffold(appBar: new AppBar(title: new Text(widget.title)) ,
                                              body: new ListView(children: <Widget>[imageDesc ,
                                                                titleText, subText , appStars , iconList])));
  }
}
