// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {

  /// TITLE : It is used to display title
  final Text title;

  /// SUBTITLE : It is used to display subtitles
  final List<Text> subTitles;

  /// BORDER RADIUS : It is used to set Border Radius of Accordion
  /// Default Value : 12
  /// Optional
  double borderRadius;

  /// CONTENT PADDING : It is used to set Padding Around Title & Subtitles of Accordion
  /// Default Value : 12
  /// Optional
  double contentPadding;

  /// BORDER COLOR : It is used to set Border Color of Accordion
  /// Default Value : Transparent
  /// Optional
  Color borderColor;

  /// TITLE BACKGROUND COLOR : It is used to set Title Background Color of Accordion
  /// Default Value : Minimal Grey
  /// Optional
  Color titleBackgroundColor;

  /// SUBTITLE BACKGROUND COLOR : It is used to set Subtitle Background Color of Accordion
  /// Default Value : White
  /// Optional
  Color subtitleBackgroundColor;

  /// Constructor
  Accordion({
    super.key,
    required this.title,
    required this.subTitles,
    this.borderRadius = 12.0,
    this.contentPadding = 12.0,
    this.borderColor = Colors.transparent,
    this.titleBackgroundColor = const Color.fromRGBO(238, 238, 238, 1.0),
    this.subtitleBackgroundColor =  Colors.white,
  });


  @override
  State<Accordion> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: widget.borderColor),
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              setState(()=> isExpanded = !isExpanded );
            },
            child: Container(
              decoration: BoxDecoration(
                color: widget.titleBackgroundColor,
                borderRadius: isExpanded ? BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadius),
                  topRight: Radius.circular(widget.borderRadius))
                    : BorderRadius.all(Radius.circular(widget.borderRadius))
              ),
              padding: EdgeInsets.all(widget.contentPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.title,
                  Icon(isExpanded
                    ? Icons.keyboard_arrow_up_sharp
                    : Icons.keyboard_arrow_down_sharp
                  ),
                ],
              ),
            ),
          ),
          if(isExpanded)
            Container(
              decoration: BoxDecoration(
                color: widget.subtitleBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(widget.borderRadius),
                  bottomLeft: Radius.circular(widget.borderRadius))
              ),
              padding: EdgeInsets.all(widget.contentPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.subTitles
              )
            )
        ],
      ),
    );
  }
}
