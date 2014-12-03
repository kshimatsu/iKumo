# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App = angular.module("iKumo", [])

App.controller("loginRegisterController", ["$scope", "$http", "$timeout", ($scope, $http, $timeout) ->
  $scope.hide_login = true

  $scope.changeToRegister = ->
    $scope.hide_login = false

  $scope.changeToLogin = ->
    console.log "something"
    $scope.hide_login = true
])
