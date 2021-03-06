import 'package:awards/NavPages/audioListenPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:awards/app/functions.dart/diffrentGridTile/gridTile.dart';
import 'package:awards/services/UserNULLORNOT.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final changeGrid = Provider.of<GridTileManagerChanger>(context);
    final userStauts = Provider.of<UserISAUTHORNOT>(context);
    return Container(
      color: userStauts.changeUserStatus ? Colors.blue : Colors.black,
      child: Column(
        children: [
          Container(width: double.infinity),
          Expanded(
            child: Consumer<GridTileManagerChanger>(
              builder: (context, _, c) {
                return GridView.builder(
                  itemCount: 1,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 3 / 3,
                    maxCrossAxisExtent: changeGrid.scaleNormal,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                  ),
                  itemBuilder: (context, i) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => AudioListenPage()),
                      ),
                      onScaleStart: changeGrid.scaleStart,
                      onScaleUpdate: changeGrid.scaleUpdate,
                      onScaleEnd: changeGrid.scaleEnd,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          image: DecorationImage(
                            image: AssetImage('images/Cover.jpg'),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
