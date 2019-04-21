import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;

class ApiAccess {
  //TODO
  String path;
  var client; //Using clients to access the api

  ApiAccess() {
    //TODO
    client = new http.Client();
  }

  final String url = "wic_polls.serveo.net/";

  /// Call the api to insert a new pending poll
  void createPoll(String name, String description, bool canAddOption,
      bool multiplesAllowed, List<String> options) {
  }

  /// Call api to attempt a login
  ///   return first Map from resulting List<Map<String, dynamic>>
  Map<String, dynamic> login(String username, String password) {
    //TODO
    var user = Map<String, dynamic>();
    user['username'] = username;
    user['id'] = 5;
    if (username == 'admin') {
      user['isAdmin'] = true;
    } else {
      user['isAdmin'] = false;
    }
    return user;
  }

  /// Call api to get all approved polls
  ///   with a lifespan of less than 2 weeks since approval
  List<Map<String, dynamic>> getAllCurrentPolls() {
    //TODO
    return null;
  }

  /// Call api to get all approved polls
  ///   with a lifespan of more than 2 weeks since approval
  List<Map<String, dynamic>> getAllPastPolls() {
    //TODO
    return null;
  }

  /// Call api to get all pending polls
  List<Map<String, dynamic>> getAllPendingPolls() {
    //TODO
    return null;
  }

  /// Call api to get all current polls
  ///   owned by the user with the given id
  List<Map<String, dynamic>> getPollsForUser(int userid) {
    //TODO
    return null;
  }

  /// Call api to update poll with given id
  ///   isApproved    poll is approved by admin
  void approvePoll(bool isApproved, int pollId) {
  }
}