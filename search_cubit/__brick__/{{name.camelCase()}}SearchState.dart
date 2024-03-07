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
///File Name: {{name.camelCase}}SearchState
///
///@author {{author}} Meditab Software Inc.
///ER-Id: {{erId}}
///@version 1.0.0
///
///


part of '{{name.camelCase()}}SearchCubit.dart';

abstract class SearchState {}

class SearchEmpty extends SearchState {}

class SearchFound extends SearchState {
  final String query;

  SearchFound(this.query);
}

class SearchNotFound extends SearchState {}
