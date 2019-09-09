# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#shipping_postcode").jpostal({
    postcode : [ "#shipping_postcode" ],
    address  : {
      "#shipping_prefecture_code" : "%3",
      "#shipping_address_city"            : "%4",
      "#shipping_address_street"          : "%5%6%7"
    }
  })
