const request = require('request')

const getRequest = (url, pathParams, queryParams, reqCallback) => {
  let serviceURL = url
  if (pathParams) {
    serviceURL = serviceURL.concat('/').concat(pathParams.join('/'))
  }

  if (queryParams) {
    queryStr = ''
    for (const key in queryParams) {
      queryStr = queryStr.concat(`${key}=${queryParams[key]}&`)
    }
    serviceURL = serviceURL.concat('?').concat(queryStr)
  }

  request({url: serviceURL, json: true}, (error, response) => {
    reqCallback(error, response)
  })
}

module.exports = {
  get: getRequest
}
