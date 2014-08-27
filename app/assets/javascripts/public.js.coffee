# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

repositionLogo = () ->
	if document.location.pathname == "/"
		$('#logo').css('position', 'absolute')
	else
		$('#logo').css('position', 'relative')


resizeSidebar = () ->
  w = $(window).width()
  if w < 992
    $('#sidebar').css('position', 'relative')
  else
    $('#sidebar').css('position', 'fixed')
	$("#sidebar").affix offset:
		top: 245

$ ->

	repositionLogo()

	jQuery.event.add window, "load", resizeSidebar
	jQuery.event.add window, "resize", resizeSidebar

	$('.action-button-main').click () ->
		repositionLogo()

	$body   = $(document.body);

	$body.scrollspy({
		target: '#leftCol'
	});