var myGoogleMapsAPIKey = '';
var myGoogleDefaulHeader = {
    'Accept': 'application/json, ' + 'text/plain, */*',
    'Content-Type': 'application/json;charset=UTF-8',
    'User-Agent': 'Mozilla/5.0 (Linux; Android 6.0.1; D5803 Build/23.5.A.1.291; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/63.0.3239.111 Mobile Safari/537.36'};

function requestGeocoding(lat, lng) {
    var myUrl = 'https://maps.googleapis.com/maps/api/geocode/json?latlng=' + lat/1000000 + ',' + lng/1000000;
    var myAddress = '<UNKNOWN>';
    if (myGoogleMapsAPIKey !== "") {
        myUrl = myUrl + '&key=' + myGoogleMapsAPIKey;
        //adapter.log.info(myUrl);
        try{
            request.get({url:myUrl, headers: myGoogleDefaulHeader,json: true}, function (error, response, result) {
                //adapter.log.info(response.statusCode);
                //adapter.log.info(JSON.stringify(result));

                if ((result.results.length > 0) & result.results[0].formatted_address !== "") {
                    myAddress = result.results[0].formatted_address;
                }
                adapter.setState(state_l_address.label, {val: myAddress, ack: true});
                //adapter.log.info(myAddress);
            });
        } catch (err) {
            adapter.setState(state_l_address.label, {val: null, ack: true});
            adapter.log.error(response.statusCode);
        }
    } else {
        adapter.setState(state_l_address.label, {val: null, ack: true});
    }
}