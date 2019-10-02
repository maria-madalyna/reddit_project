const rails_ujs = require("@rails/ujs")
import $ from 'jquery';


$(document).on('turbolinks:load', () => {
  $('.like').on('click', function () {
    const id = $(this).data('id');
    rails_ujs.ajax({
      url: `/posts/${id}/voting/up`,
      dataType: 'json',
      type: 'POST'
    })
  })
});

$(document).on('turbolinks:load', () => {
  $('.dislike').on('click', function () {
    const id = $(this).data('id');
    rails_ujs.ajax({
      url: `/posts/${id}/voting/down`,
      dataType: 'json',
      type: 'POST'
    })
  })
});