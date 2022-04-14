import mapboxgl from "mapbox-gl";
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder";

const initAutocomplete = () => {
  mapboxgl.accessToken =
    "pk.eyJ1IjoiYW1vdXJhbGkiLCJhIjoiY2wxaTY3bHgyMXMwODNjcDNzZWNic2NzdiJ9.jFV0Aug4qQ1T296MLHolIQ";
  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    types: "country,region,place,postcode,locality,neighborhood",
  });

  geocoder.addTo("#geocoder");

  // Get the geocoder results container.
  const results = document.getElementById("result");
  const hailMary = document.getElementById("search_location");
  const again = document.getElementsByClassName("mapboxgl-ctrl-geocoder mapboxgl-ctrl")[0].children[1];

  // Add geocoder result to container.
  geocoder.on("result", (e) => {
    results.innerText = JSON.stringify(e.result, null, 2);
    hailMary.value = again.value;
  });

  // Clear results container when search is cleared.
  geocoder.on("clear", () => {
    results.innerText = "";
    hailMary.value = "";
  });
};

export { initAutocomplete };
