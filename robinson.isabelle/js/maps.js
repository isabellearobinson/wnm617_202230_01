
const makeMap = async (target, center={ lat: 37.751917, lng: -122.447489 }) => {
   await checkData(()=>window.google);

   let map_el = $(target);

   new google.maps.Map(map_el[0], {
      center,
      zoom: 13,
      disableDefaultUI: true,
   });
}