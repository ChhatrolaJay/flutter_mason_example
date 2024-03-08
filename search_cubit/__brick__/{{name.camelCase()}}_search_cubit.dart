///Meditab Software Inc. CONFIDENTIAL
///__________________
///
/// [2024] Meditab Software Inc.
/// All Rights Reserved.
///
///NOTICE:  All information contained herein is, and remains
///the property of Meditab Software Inc. and its suppliers,
///if any.  The intellectual and technical concepts contained
///herein are proprietary to Meditab Software Incorporated
///and its suppliers and may be covered by U.S. and Foreign Patents,
///patents in process, and are protected by trade secret or copyright law.
///Dissemination of this information or reproduction of this material
///is strictly forbidden unless prior written permission is obtained
///from Meditab Software Incorporated.
///
///File Name: {{name.camelCase}}SearchCubit
///
///@author {{author}} Meditab Software Inc.
///ER-Id: {{erId}}
///@version 1.0.0
///
///

import 'package:flutter_bloc/flutter_bloc.dart';

part '{{name.camelCase()}}_search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchEmpty());

  void search(String query) {
    // Implement search functionality here
    // Emit Found or NotFound states based on search result
    // logic code for search function:-

    ///[Logic] -
    /// _searchSampleList = _sampleList.where((element) {
    ///   return element.name?.toLowerCase().contains(query) ?? false;
    /// }).toList();
    /// _searchSampleList.isNotEmpty ?
    /// emit(SearchFound(
    ///     sampleList: _searchSampleList)) : emit(SearchNotFound());
  }

  void clearSearch() {
    // Implement method to clear search

    /// _searchSampleList.clear();
    /// emit(SearchFound(
    ///     sampleList: _searchSampleList));
    emit(SearchEmpty());
  }
}
