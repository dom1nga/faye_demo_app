//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .

$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
});

$(function() {
  var faye = new Faye.Client('http://localhost:9292/faye');
  faye.subscribe('/cards/new', function (data) {
    eval(data);
  });
  faye.subscribe('/cards/update', function (data) {
    eval(data);
  });
  faye.subscribe('/tickets/new', function (data) {
    eval(data);
  });
  faye.subscribe('/tickets/update', function (data) {
    eval(data);
  });
});
