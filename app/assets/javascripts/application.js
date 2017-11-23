// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function () {
  $('.dropdown-button1').dropdown();
  $('.dropdown-button2').dropdown();

  $('.daterange').daterangepicker({
    timePicker: true,
    timePickerIncrement: 240,
    timePicker24Hour: true,
    locale: {
      format: 'MM/DD/YYYY h'
    }
  });

  $('.daterange').on('apply.daterangepicker', (ev, picker) => {
    $('.start__date').val(picker.startDate.format('DD-MM-YYYY'));
    $('.end__date').val(picker.endDate.format('DD-MM-YYYY'));
  });
});