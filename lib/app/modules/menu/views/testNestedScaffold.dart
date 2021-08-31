import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PawzHome(),
    );
  }
}

class PawzHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.conversation_bubble),
            title: Text('Support'),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoDemoTab1();
              },
              defaultTitle: 'Colors',
            );
            break;
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => CupertinoDemoTab2(),
              defaultTitle: 'Support Chat',
            );
            break;
        }
        return Container();
      },
    );
  }
}

class CupertinoDemoTab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(),
          SliverList(
            delegate: SliverChildListDelegate([Tab1RowItem()]),
          ),
        ],
      ),
    );
  }
}

class Tab1RowItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.of(context).push(CupertinoPageRoute<void>(
          title: "Click me",
          builder: (BuildContext context) => Tab1ItemPage(),
        ));
      },
      child: Padding(padding: EdgeInsets.all(10.0), child: Text("Click me")),
    );
  }
}

class Tab1ItemPage extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(),
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Center(
                child: CupertinoButton(
                  child: const Text(
                    'Push rootNavigator true',
                  ),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).push(
                      CupertinoPageRoute<bool>(
                        fullscreenDialog: true,
                        builder: (BuildContext context) => Tab3Dialog(),
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: CupertinoButton(
                  child: const Text(
                    'Push rootNavigator false',
                  ),
                  onPressed: () {
                    Navigator.of(context, rootNavigator: false).push(
                      CupertinoPageRoute<bool>(
                        fullscreenDialog: true,
                        builder: (BuildContext context) => Tab3Dialog(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

class CupertinoDemoTab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(),
        child: Container(
          child: Center(
            child: Text("Tab 2"),
          ),
        ));
  }
}

class Tab3Dialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text("Ok"),
        ),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeBlue,
          child: const Text('Sign in'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

// ScreenUtil
class NestedScaffold extends StatelessWidget {
  const NestedScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Text('hello'),
              Container(
                height: 7.sh,
                child: Scaffold(
                  body: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) {
                          return Container(
                            color: Colors.black,
                          );
                        }));
                      },
                      child: Text('hello')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
