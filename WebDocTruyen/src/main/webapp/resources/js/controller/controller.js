'use strict';
angular.module('myApp').controller('HeaderController', ['$scope', 'HeaderService', function($scope, HeaderService) {
	fetchMenu();
	$scope.listTL = [];
	
	function fetchMenu(){
		HeaderService.fetchListTL(function(response){
			$scope.listTL = response;
		});
	}
	
	 $scope.cates = function(){
	    	$scope.count="aaaaaa";  
	 }
   
}]);

angular.module('myApp').controller('IndexController', ['$scope', 'IndexService', function($scope, IndexService) {
	fetchListTRS();
	$scope.listTR = [];
	function fetchListTRS(){
		IndexService.fetchListTR(function(response){
			$scope.listTR = response;
		});
		
	}
}]);

