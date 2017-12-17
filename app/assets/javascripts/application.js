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
   * Side nav
   */
  $(".button-collapse").sideNav();

  /**
   * Dropdown
   */
  $('.dropdown-button1').dropdown();
  $('.dropdown-button2').dropdown();
  if ($('.dropdown-button3').length) {
    $('.dropdown-button3').dropdown();
  }


  /**
   * Date ranger picker 
   */
  function dateRange() {
    if ($('#books_data').length) {
      var booksDate = JSON.parse($('#books_data').text());
    }

    console.warn('trugger dateranger init');

    $('.daterange').daterangepicker({
      timePicker: true,
      timePickerIncrement: 240,
      timePicker24Hour: true,
      isInvalidDate: (date) => {
        if (booksDate && booksDate.length) {
          console.log('there is date booked');
          for (let i = 0; i < booksDate.length; i++) {
            if (date.isAfter(moment(booksDate[i].start)) && date.isBefore(moment(booksDate[i].end))) {
              console.log('true');
              return true;
            }
          }
        }
      },
      minDate: moment().format('L'),
      locale: {
        format: 'MM/DD/YYYY h'
      }
    });

    $('.daterange').val('');

    $('.daterange').on('apply.daterangepicker', (ev, picker) => {
      $('.start__date').val(picker.startDate.format('DD-MM-YYYY'));
      $('.end__date').val(picker.endDate.format('DD-MM-YYYY'));
      let dayPrice = $('.day__price').text();
      let numberDays = Math.floor((Date.parse(picker.endDate) - Date.parse(picker.startDate)) / 86400000) + 1;
      $('.total__days').text('Nombre total de jours : ' + String(numberDays));
      $('.total__price').text('Prix total : ' + String((numberDays) * dayPrice) + ' €');
    });
  }

  if ($('.daterange').length) {
    dateRange();
  }


  /**
   * Google Autocomplete 
   */
  function googleAutocomplete() {
    let options = {
      componentRestrictions: {
        country: "fr"
      }
    };
    let input = $('.address')[0];
    let autocomplete = new google.maps.places.Autocomplete(input, options);

    autocomplete.addListener('place_changed', () => {
      let place = autocomplete.getPlace();
      $('.lat').val(place.geometry.viewport.f.f);
      $('.lng').val(place.geometry.viewport.b.b);
    });
  }
  if ($('.address').length) {
    googleAutocomplete();
  }

  /**
   * Display an map 
   */
  function initMap() {
    let lat = Number($('#lat').text())
    let lng = Number($('#lng').text())

    let map = new google.maps.Map($('#map')[0], {
      center: {
        lat: lat,
        lng: lng
      },
      zoom: 12
    });

    let marker = new google.maps.Marker({
      position: {
        lat: lat,
        lng: lng
      },
      map: map,
    });
  }

  if ($('#lat').length && $('#lng').length) {
    initMap();
  }

  $('.carousel.carousel-slider').carousel({
    fullWidth: true
  });

  $(document).ready(function () {
    $('ul.tabs').tabs();
  });
});