

function create_namespace(name){
    var names = name.split('.');
    var current = window;

    $.each(names, function(idx, name){
        current[name] = current[name] || {};
        current = current[name];
    });

    return current;
}

create_namespace('app.Listings');


app.Listings.CreateViewController = function() {
    var that = this;

    this.listing_div = $('#listings');
    this.offerings_div = $('#offerings');
    this.wanted_div = $('#wanted');

    // Default is to hide the Wanted listings
    $(this.wanted_div).hide();

    this.nav_tabs = $('.nav-tabs li');

    _.each(this.nav_tabs, function(tab){
        $(tab).click(function(){
           that.toggle_listings(this);
        });
    });

}

app.Listings.CreateViewController.prototype = {
    toggle_listings: function(clicked_tab){
        var that = this;
        var active_tab = $('.nav-tabs').find('.active');
        var active_div = $(that.listing_div).find('.active');
        var target_div = $('#' + _.first($(clicked_tab).attr('id').split('_tab')));

        $(active_tab).toggleClass('active');
        $(active_div).toggleClass('active');
        $(active_div).hide();

        $(target_div).toggleClass('active');
        $(target_div).show();
        $(clicked_tab).toggleClass('active');
    }
}




/*
 $.ajax({
 url: data_url,
 type: 'GET',
 dataType: 'json',
 beforeSend: function(){

 },
 success: function(data) {

 },
 error: function (data, textStatus, errorThrown) {
 var errorDivTag = $(document.createElement('div'));
 errorDivTag.attr('class', 'alert alert-danger').
 text('Error: ' + errorThrown);

 that.di_error_div.append(errorDivTag);
 }
 });
 */