var LibraryCtrl = function($scope){
	$scope.libraries = [];
	
	$scope.addLibrary = function(){
		$scope.libraries.push($scope.newLibrary)
		$scope.newLibrary = {}
	};

	$scope.removeLibrary = function(newLibrary){
		$scope.libraries.splice(this.index,1)
	}
};


var BooksCtrl = function($scope){
	$scope.library.books = [];

	$scope.addBook = function(){
		console.log($scope.newBook);
		$scope.library.books.push($scope.newBook);
		$scope.newBook = {};
	};

	$scope.removeBook = function(newBook){
		var index = $scope.library.books.indexOf(newBook)
		$scope.library.books.splice(index,1);
	};

};

