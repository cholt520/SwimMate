<!DOCTYPE html>
<html>
  <head>
    <style type="text/css">
      html, body { height: 100%; margin: 0; padding: 0; }
      #map { height: 100%; }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script type="text/javascript">

var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });
}//AIzaSyAXq_DD3rj8Dicz9Lpff1iGFpIY89GrIik

    </script>
    <script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAXq_DD3rj8Dicz9Lpff1iGFpIY89GrIik&callback=initMap">
    </script>
  </body>
</html>