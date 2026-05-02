import 'package:flutter/foundation.dart';

@immutable
class FilterState {
  final double minPrice;
  final double maxPrice;
  final bool men;
  final bool women;
  final List<String> colors;
  final bool isSubmitting;

  const FilterState({
    required this.minPrice,
    required this.maxPrice,
    required this.men,
    required this.women,
    required this.colors,
    required this.isSubmitting,
  });

  factory FilterState.initial() {
    return const FilterState(
      minPrice: 0,
      maxPrice: 1000,
      men: false,
      women: false,
      colors: [],
      isSubmitting: false,
    );
  }

  FilterState copyWith({
    double? minPrice,
    double? maxPrice,
    bool? men,
    bool? women,
    List<String>? colors,
    bool? isSubmitting,
  }) {
    return FilterState(
      minPrice: minPrice ?? this.minPrice,
      maxPrice: maxPrice ?? this.maxPrice,
      men: men ?? this.men,
      women: women ?? this.women,
      colors: colors ?? this.colors,
      isSubmitting: isSubmitting ?? this.isSubmitting,
    );
  }
}
