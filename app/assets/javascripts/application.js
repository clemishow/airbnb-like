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


$(document).on('turbolinks:load', () => {
  /**
  * Dropdown
  */
  $('.dropdown-button1').dropdown();
  $('.dropdown-button2').dropdown();

  /**
  * Date ranger picker 
  */ 
  $('.daterange').daterangepicker({
    timePicker: true,
    timePickerIncrement: 240,
    timePicker24Hour: true,
    minDate: moment().format('L'),
    locale: {
      format: 'MM/DD/YYYY h'
    }
  });

  $('.daterange').val('');

  $('.daterange').on('apply.daterangepicker', (ev, picker) => {
    $('.start__date').val(picker.startDate.format('DD-MM-YYYY'));
    $('.end__date').val(picker.endDate.format('DD-MM-YYYY'));
  });

  /**
  * Google Autocomplete 
  */
  let options = {
    componentRestrictions: { country: "fr" }
  };
  let input = $('.address')[0];
  let autocomplete = new google.maps.places.Autocomplete(input, options);

  autocomplete.addListener('place_changed', () => {
    let place = autocomplete.getPlace();
    $('.lat').val(place.geometry.viewport.b.b);
    $('.lng').val(place.geometry.viewport.f.f);
  });
});