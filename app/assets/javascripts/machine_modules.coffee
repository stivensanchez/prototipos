# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'page:change', ->
	#$('#module_machine_machine_modules_attributes_machine_id').parent().hide()
	machines = $('#module_machine_machine_modules_attributes_machine_id').html()
	$('#module_machine_modulo_id').change ->
		modulo = $('#module_machine_modulo_id :selected').text()
		options = $(machines).filter("optgroup[label='#{modulo}']").html()
		#console.log options.length
		if options
			$('#module_machine_machine_modules_attributes_machine_id').html(options)
			$('#module_machine_machine_modules_attributes_machine_id').parent().show()

		else
			$('#module_machine_machine_modules_attributes_machine_id').empty()
			$('#module_machine_machine_modules_attributes_machine_id').parent().hide()	
