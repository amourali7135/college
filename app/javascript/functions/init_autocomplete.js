import mapboxgl from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";


const initAutocomplete = () => {
  mapboxgl.accessToken = "pk.eyJ1IjoiYW1vdXJhbGkiLCJhIjoiY2wxaTY3bHgyMXMwODNjcDNzZWNic2NzdiJ9.jFV0Aug4qQ1T296MLHolIQ";
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    types: "country,region,place,postcode,locality,neighborhood",
  });

  geocoder.addTo("#geocoder");
  //Trying to fix this shit to be submitted on the form.

  // Get the geocoder results container.
  const results = document.getElementById("result"); 
  const experiment = document.getElementById("search_location");

  // Add geocoder result to container.
  geocoder.on("result", (e) => {
    results.innerText = JSON.stringify(e.result, null, 2);
    experiment.innerText = results.innerText.JSON.stringify(e.result, null, 2);
  });

  // Clear results container when search is cleared.
  geocoder.on("clear", () => {
    results.innerText = "";
  });


// var geocoder = new MapboxGeocoder({ accessToken: mapboxgl.accessToken });
// geocoder.addTo('#geocoder');
};

export { initAutocomplete };