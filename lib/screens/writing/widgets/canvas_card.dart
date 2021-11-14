import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../store/canvas_store.dart';
import 'canvas.dart';

class KanjiCanvasCard extends StatefulWidget {
  CanvasStore canvasStore;

  KanjiCanvasCard(this.canvasStore);

  @override
  _KanjiCanvasCardState createState() => _KanjiCanvasCardState();
}

class _KanjiCanvasCardState extends State<KanjiCanvasCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Observer(
                  builder: (context) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text('Strokes: ${widget.canvasStore.strokes}'),
                      )),
              Observer(
                builder: (context) => Text(
                  '${widget.canvasStore.points.length}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              IconButton(
                onPressed: widget.canvasStore.clear,
                icon: Icon(Icons.clear),
              )
            ],
          ),
          KanjiCanvas(widget.canvasStore),
        ],
      ),
    );
  }
}
