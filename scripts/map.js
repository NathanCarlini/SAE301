let choropleth = document.getElementById("map");
var map = L.map('map').setView([45.831293, 1.259025], 13);

var point = L.point(200, 300);
//     .setLatLng([45.831293, 1.259025])
// var popup = L.popup()
//     .setLatLng([51.513, -0.09])
//     .setContent("I am a standalone popup.")
//     .openOn(map);

L.marker([51.5, -0.09]).addTo(map)



L.tileLayer("http://{s}.tile.osm.org/{z}/{x}/{y}.png", {
    noWrap: true,
    // zoomDelta: 0.25,
    // zoomSnap: 0,
    attribution:
      '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors',
  }).addTo(map);

