const service = require('./service')

const secretKey = 'pk.eyJ1IjoicGFwYWJvc2UiLCJhIjoiY2s3dHBlM2NsMTI2ZzNsb3gwNnQ1ZWNmeSJ9.EG5XP1mbmhquI40X1OgUvA'
const baseURL = 'https://api.mapbox.com/geocoding/v5'
const endpoints = {
  geocode: 'mapbox.places'
}

const getGeocode = async (location) => {
  if(!location) {
    console.log('Invalid location')
    return ;
  }

  service.get(baseURL,
    [endpoints.geocode, `${location}.json`],
    {access_token: secretKey, limit: 1},
    (error, response) => {
      if (error) {
        console.log(error);
        return ;
      } else {
        console.log(response.body.features[0].center[0]);
        console.log(response.body.features[0].center[1]);
        console.log(response.body.features[0].place_name);
      }
    }
  )
}

module.exports = {
  getGeocode: getGeocode
}
