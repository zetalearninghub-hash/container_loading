/// A Calculator.
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ContainerLoading extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final BoxConstraints? constraints;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final Matrix4? transform;
  final AlignmentGeometry? transformAlignment;
  final Color loaderColor;
  final Color? containerColor;
  final Color backgroundColor;
  final Clip clipBehavior;
  final Widget? child;

  const ContainerLoading({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.alignment,
    this.constraints,
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    this.transformAlignment,

    this.clipBehavior = Clip.none,
    required this.loaderColor,
   this.containerColor,
    required this.backgroundColor,
    this.child,
  });

  @override
  State<ContainerLoading> createState() => _ContainerLoadingState();
}

class _ContainerLoadingState extends State<ContainerLoading> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: widget.backgroundColor,
      highlightColor: widget.loaderColor,
      child: Container(
        width: widget.width,
        height: widget.height,
        margin: widget.margin,
        padding: widget.padding,
        alignment: widget.alignment,
        constraints: widget.constraints,
        decoration: widget.decoration,
        foregroundDecoration: widget.foregroundDecoration,
        transform: widget.transform,
        transformAlignment: widget.transformAlignment,
        clipBehavior: widget.clipBehavior,
        child: widget.child,
      ),
    );
  }
}
