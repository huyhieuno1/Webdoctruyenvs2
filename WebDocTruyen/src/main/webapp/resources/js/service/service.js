'use strict';
angular.module('myApp').factory('HeaderService', ['$http', function($http){
	var URL = '/WebDocTruyen/header/';
	var factory = {};
	factory.fetchListTL = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	
    factory.fetchListTR_TL = (id,responseData,errorData) => {
    	$http.put(REST_SERVICE_URI+id)
    	.then(function(response){
    		responseData(response.data);
    	}, function(error){
    		errorData(error.statusText);
    	});
    }
	
	return factory;
}]);

angular.module('myApp').factory('IndexService', ['$http', function($http){
	var URL = '/WebDocTruyen/listTr/';
	var factory = {};
	factory.fetchListTR = (callbackData,error) => { 
		$http.get(URL)
		.then(function(response){
				if(response.data == '204'){
					console.log('fetch data error!')
				}
				else{
					callbackData(response.data);
				}
			}).catch(function(error){console.log('fetch data error!')});
	}
	return factory;
}]);

