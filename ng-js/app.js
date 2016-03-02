/**
 * Created by samsuj on 29/10/15.
 */


'use strict';

/* App Module */

var jungledrone = angular.module('jungledrone', ['ui.router','ngCookies','ui.bootstrap','angularValidator','ngFileUpload']);

jungledrone.run(['$rootScope', '$state',function($rootScope, $state){

    $rootScope.$on('$stateChangeStart',function(){
        $rootScope.stateIsLoading = true;
    });


    $rootScope.$on('$stateChangeSuccess',function(){
        $rootScope.stateIsLoading = false;
    });

}]);

jungledrone.config(function($stateProvider, $urlRouterProvider,$locationProvider) {

// For any unmatched url, redirect to /state1
    $urlRouterProvider
        .otherwise("/index/");

//
    // Now set up the states
    $stateProvider
        .state('index',{
            url:"/index/:target",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/home.html' ,
                    controller: 'index'
                },

            }
        })



        .state('services',{
            url:"/services",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/services.html' ,
                    controller: 'services'
                },

            }
        })
        .state('droneracing',{
            url:"/droneracing",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/droneracing.html' ,
                    //controller: 'home'
                },

            }
        })
        .state('virtualreality',{
            url:"/virtualreality",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/virtualreality.html' ,
                    controller: 'virtualreality'
                },

            }
        })


        .state('event',{
            url:"/event",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/events.html' ,
                    controller: 'event'
                },

            }
        })


        .state('dashboard',{
            url:"/dashboard",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/dashboard.html' ,
                     controller: 'dashboard'
                },

            }
        }
    )
        .state('add-admin',{
            url:"/add-admin",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/add_admin.html' ,
                    controller: 'addadmin'
                },

            }
        }
    )
        .state('edit-admin',{
            url:"/edit-admin/:userId",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/edit_admin.html' ,
                    controller: 'editadmin'
                },

            }
        }
    )



        .state('admin-list',{
            url:"/admin-list",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/admin_list.html' ,
                    controller: 'adminlist'
                },

            }
        }
    )
        .state('signupuser-list',{
            url:"/signupuser-list",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/signupuser_list.html' ,
                    controller: 'signupuserlist'
                },

            }
        }
    )
        .state('contact-list',{
            url:"/contact-list",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/contact_list.html' ,
                    controller: 'contactlist'
                },

            }
        }
    )
        .state('add-event', {
            url: "/add-event",
            views: {
                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/add_event.html' ,
                    controller: 'addevent'
                },

            }
        }

    )
        .state('edit-event', {
            url: "/edit-event/:eventId",
            views: {
                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/edit_event.html' ,
                    controller: 'editevent'
                },

            }
        }

    )

        .state('event-list',{
            url:"/event-list",
            views: {

                'admin_header': {
                    templateUrl: 'partials/admin_top_menu.html' ,
                    controller: 'admin_header'
                },
                'admin_left': {
                    templateUrl: 'partials/admin_left.html' ,
                    //  controller: 'admin_left'
                },
                'admin_footer': {
                    templateUrl: 'partials/admin_footer.html' ,
                },
                'content': {
                    templateUrl: 'partials/event_list.html' ,
                    controller: 'eventlist'
                },

            }
        }
    )



        .state('login',
        {
            url:"/login",
            views: {

                /*              'header': {
                 templateUrl: 'partials/admin_header.html' ,
                 controller: 'header'
                 },
                 'footer': {
                 templateUrl: 'partials/admin_footer.html' ,
                 //controller: 'footer'
                 },
                 */                'content': {
                    templateUrl: 'partials/login.html' ,
                    controller: 'login'
                },

            }
            /*           onEnter: ['$stateParams', '$state', '$uibModal',
             function($stateParams, $state, $uibModal) {
             var size;
             $uibModal.open({
             animation: true,
             templateUrl: 'myModalContent.html',
             controller: 'ModalInstanceCtrl',
             size: size,

             });
             }]
             */        }
    )



        .state('stock-photo',{
            url:"/stock-photo",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/imagegallery.html' ,
                    controller: 'stockphoto'
                },

            }
        }
    )

        .state('stock-video',{
            url:"/stock-video",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/videogallery.html' ,
                    //controller: 'home'
                },

            }
        }
    )

        .state('tourism',{
            url:"/tourism",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/tourism.html' ,
                    //controller: 'home'
                },

            }
        }
    )


        .state('product',{
            url:"/product",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/product.html' ,
                    //controller: 'home'
                },

            }
        }
    )

        .state('contactus',{
            url:"/contactus",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/contactus.html' ,
                    controller: 'contactus'
                },

            }
        }
    )

        .state('employment',{
            url:"/employment",
            views: {

                'header': {
                    templateUrl: 'partials/header.html' ,
                    controller: 'header'
                },
                'footer': {
                    templateUrl: 'partials/footer.html' ,
                    //controller: 'footer'
                },
                'content': {
                    templateUrl: 'partials/employment.html' ,
                    controller: 'employment'
                },

            }
        }
    )




    $locationProvider.html5Mode({
        enabled: true,
        requireBase: false,
        hashPrefix:'!'
    });

});

/*
jungledrone.directive('slideToggle', function() {
    return {
        restrict: 'A',
        scope:{
            isOpen: "=slideToggle"
        },
        link: function(scope, element, attr) {
            var slideDuration = parseInt(attr.slideToggleDuration, 10) || 200;
            scope.$watch('isOpen', function(newVal,oldVal){
                if(newVal !== oldVal){
                    element.stop().slideToggle(slideDuration);
                }
            });
        }
    };
});

jungledrone.directive('myCustomer', function() {
    return {
        template: 'Name: {{customer.name}} Address: {{customer.address}}'
    };
});*/


jungledrone.controller('index', function($scope,$state,$http,$cookieStore,$rootScope,$stateParams) {
    //$state.go('home');
    //return
    // $rootScope.stateIsLoading = true;

    $scope.form={};

    $scope.form.fname='';
    $scope.form.lname='';
    $scope.form.email='';
    //$scope.form.email.$setPristine();
    $scope.form.phone='';
    //$scope.form.country=20;
    $scope.form.city='';



    //$scope.signupForm.country=20;
    $http({
        method  : 'POST',
        async:   false,
        url     :     $scope.adminUrl+'countryList',
        data    : $.param({'uid':$scope.userid}),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {

        $scope.countrylist=data;

        $scope.signupForm.reset();

        setTimeout(function(){

            $scope.form.country=20;
            $('#country').val(20);

        },500);
        console.log(data);

    });


    $scope.tid=$stateParams.target;
    if(typeof($scope.tid)!='undefined')

        $scope.form={};
    $scope.drone_error= false;
    $scope.gender_error= false;
    $scope.dronerace_error= false;

    setTimeout(function(){

        //$('#country').val(20);
        console.log($stateParams.target);
        console.log('in set time out');
        if(($scope.tid)=='form'){
            console.log('in scroll to');
            $('html, body').animate({
                scrollTop: $('form[name="signupForm"]').offset().top
            }, 2000);
        }
    },2000);


    setTimeout(function(){
/*
        $('.carousel').eq(0).carousel({
            interval: 8000
        });*/
        $('.carousel').eq(1).carousel({
            interval: 11000
        });
        $('.carousel').eq(0).carousel({
            interval: 8000
        });

        console.log(33);

        //$('.carousel-control').last().click();

        /*if($('.carousel-indicators').find('li[class="active"]').next().length)
            $('.carousel-indicators').find('li[class="active"]').next().click();
        else
            $('.carousel-indicators').find('li').eq(0).click();*/

        //console.log($('.carousel-indicators').find('li[class="active"]').next().length);

        // $('carousel').eq(0).carousel('next');
        //$('carousel').eq(1).carousel('next');

    },800);

    $scope.carouselprev=function(){

        $('.carousel').eq(1).carousel('prev');
        console.log('this prev');

    }

    $scope.carouselnext=function(){

        $('.carousel').eq(1).carousel('next');
        console.log('this next');

    }



    $scope.signupFormsubmit =function(){

        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addcontactuser',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $('#myModal').modal('show');
            //console.log($scope.signupForm)


            $scope.signupForm.reset();

            setTimeout(function(){

                $scope.form.country=20;
                $('#country').val(20);

            },500);










        });


    }

    $scope.droneValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='drone']:checked").val()) != 'undefined' )
            {
                $scope.drone_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.drone_error=true;
                return '';

            }

        }

    }

    $scope.genderValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='gender']:checked").val()) != 'undefined' )
            {
                $scope.gender_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.gender_error=true;
                return '';

            }

        }

    }
    $scope.dronraceeValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='dron_race']:checked").val()) != 'undefined' )
            {
                $scope.dronerace_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.dronerace_error=true;
                return '';

            }

        }

    }





});


jungledrone.controller('contactus', function($scope,$state,$http,$cookieStore,$rootScope) {
    //$state.go('home');
    //return

    $scope.form={};
    $scope.drone_error= false;
    $scope.gender_error= false;
    $scope.dronerace_error= false;


    $scope.contactFormsubmit =function(){
        console.log(1);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addcontact',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $('#contactmodal').modal('show');
            $scope.contactForm.reset();
            //console.log($scope.signupForm)
            setTimeout(function(){
                //window.location.reload();
                $('#contactmodal').modal('hide');

            },3000);

        });


    }


});


jungledrone.controller('virtualreality', function($scope,$state,$http,$cookieStore,$rootScope) {
    //$state.go('home');
    //return

    setTimeout(function(){
        $('#country').val(20);
    },2000);
    $http({
        method  : 'POST',
        async:   false,
        url     :     $scope.adminUrl+'countryList',
        data    : $.param({'uid':$scope.userid}),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        console.log(data);
        $scope.form.country=20;
        $('#country').val(20);
        $scope.countrylist=data;
    });

    $scope.form={};
    $scope.drone_error= false;
    $scope.gender_error= false;
    $scope.dronerace_error= false;

    $scope.sub1 = function(){

        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addcontactuser',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $('#myModal').modal('show');
            $scope.signupForm.reset();


            setTimeout(function(){

                $scope.form.country=20;
                $('#country').val(20);

            },3000);
            //$scope.signupForm={fname:'',lname:''};


        });






    }

    $scope.droneValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='drone']:checked").val()) != 'undefined' )
            {
                $scope.drone_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.drone_error=true;
                return '';

            }

        }

    }

    $scope.genderValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='gender']:checked").val()) != 'undefined' )
            {
                $scope.gender_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.gender_error=true;
                return '';

            }

        }

    }
    $scope.dronraceeValidator=function(){


        //console.log('in drone validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());

        if($scope.signupForm.$submitted){

            if(typeof ($("input[name='dron_race']:checked").val()) != 'undefined' )
            {
                $scope.dronerace_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.dronerace_error=true;
                return '';

            }

        }

    }





});


jungledrone.controller('header', function($scope,$state,$http,$cookieStore,$rootScope,Upload) {
    $scope.gotosignup=function(){
		
        $('html, body').animate({
            scrollTop: $('form[name="signupForm"]').offset().top
        }, 2000);
    }
										  
										  
    setTimeout(function(){
        $('.dropdown-menu').hide(500);
        $scope.toggledropdown=function(){

            console.log('uuuu');
            if($('.dropdown-menu').css('display')=='none'){

                $('.dropdown-menu').show();
                $('.dropdown-menu').stop(true, true).delay(400).show();

            }
            else{

                $('.dropdown-menu').hide();
                $('.dropdown-menu').stop(true, true).delay(400).hide();
            }


        }

        $('ul.nav li.dropdown').hover(function() {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
        }, function() {
            $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
        });


    },2000);



});
jungledrone.controller('employment', function($scope,$state,$http,$cookieStore,$rootScope,Upload) {


    $scope.form={};
    $scope.form.resume = '';

    $http({
        method  : 'POST',
        async:   false,
        url     :     $scope.adminUrl+'countryList',
        data    : $.param({'uid':$scope.userid}),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        console.log(data);

        setTimeout(function(){
            //$scope.signupForm.reset();

            $scope.form.country=20;
            $('#country').val(20);

        },3000);


        $scope.countrylist=data;
    });

    /*file upload part start */



    $scope.$watch('event_imgupload', function (files) {
        $scope.formUpload = false;
        if (files != null) {
            for (var i = 0; i < files.length; i++) {
                $scope.errorMsg = null;
                (function (file) {
                    upload(file);
                })(files[i]);
            }
        }
    });

    $scope.getReqParams = function () {
        return $scope.generateErrorOnServer ? '?errorCode=' + $scope.serverErrorCode +
        '&errorMessage=' + $scope.serverErrorMsg : '';
    };

    function upload(file) {
        $scope.errorMsg = null;
        uploadUsingUpload(file);
    }

    function uploadUsingUpload(file) {
        $rootScope.stateIsLoading = true;
        file.upload = Upload.upload({
            url: $scope.adminUrl+'uploadresume' + $scope.getReqParams(),
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            fields: {'id':$rootScope.createIdeaId},
            file: file,
            fileFormDataName: 'Filedata'
        });

        file.upload.then(function (response) {
            $('.progress').removeClass('ng-hide');
            file.result = response.data;

            $scope.form.resume = response.data.image_url;
            $scope.form.event_image = response.data.image_name;
            $rootScope.stateIsLoading = false;

            //$('#loaderDiv').addClass('ng-hide');


        }, function (response) {
            if (response.status > 0)
                $scope.errorMsg = response.status + ': ' + response.data;
        });

        file.upload.progress(function (evt) {
            // Math.min is to fix IE which reports 200% sometimes
           // $('#loaderDiv').removeClass('ng-hide');

            file.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));

        });

        file.upload.xhr(function (xhr) {
            // xhr.upload.addEventListener('abort', function(){console.log('abort complete')}, false);
        });
    }



    /*file upload end */


    setTimeout(function(){
        $scope.form.country=20;
        $('#country').val(20);
    },2000);


    $scope.employmentsubmit=function(){



        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addemployement',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $('#employmentmodal').modal('show');
            //console.log($scope.signupForm)
            $scope.employmentform.reset();
            $scope.form={};

           // $('#employmentmodal').modal('show');
            setTimeout(function(){


                $scope.form.country=20;
                $('#country').val(20);
                $('#employmentmodal').modal('hide');

            },3000);














        });





    }




});




jungledrone.controller('login', function($scope,$state,$http,$cookieStore,$rootScope) {
    $scope.login = function(){
        $rootScope.stateIsLoading = true;
        console.log(1);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'adminlogin',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            if(data.status == 'success'){
                $cookieStore.put('userid',data.userdetails.id);
                $cookieStore.put('useremail',data.userdetails.email);
                $cookieStore.put('userfullname',data.userdetails.fname+' '+data.userdetails.lname);
                $cookieStore.put('username',data.userdetails.username);

                if(typeof (data.userdetails.roles[4]) != 'undefined')
                    $cookieStore.put('userrole',4);
                if(typeof (data.userdetails.roles[5]) != 'undefined')
                    $cookieStore.put('userrole',5);
                if(typeof (data.userdetails.roles[6]) != 'undefined')
                    $cookieStore.put('userrole',6);
                if(typeof (data.userdetails.roles[7]) != 'undefined')
                    $cookieStore.put('userrole',7);
                console.log($cookieStore.get('userid'));
                console.log($cookieStore.get('useremail'));
                console.log($cookieStore.get('userfullname'));

                $state.go('dashboard');

                /*


                 if(typeof($cookieStore.get('idea_det_id')) != 'undefined' && $cookieStore.get('idea_det_id')>0) {
                 $scope.idea_det_id = $cookieStore.get('idea_det_id');
                 $cookieStore.remove('idea_det_id');
                 $state.go('ideadetails',{ideaId: $scope.idea_det_id});
                 return
                 }else{
                 */
                //   $state.go('dashboard');
                //  return
                // }

            }else{
                $scope.errormsg = data.msg;

                console.log('in error');
            }

        });
    }
});

jungledrone.controller('addadmin', function($scope,$state,$http,$cookieStore,$rootScope) {
    // $state.go('login');
    $scope.contact=['Anytime','Early morning','Mid morning','Afternoon','Early evening','Late evening'];
    $scope.submitadminForm = function(){

        console.log($scope.adminUrl+'addadmin');


        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addadmin',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            //$rootScope.stateIsLoading = false;
            if(data.status == 'error'){
                console.log(data);
                $('.email_div').append('<label class="control-label has-error validationMessage">This email already exists.</label>');
            }else{
                $state.go('admin-list');
                return;
            }



        });


    }

    //console.log('in add admin form ');
});
jungledrone.controller('editadmin', function($scope,$state,$http,$cookieStore,$rootScope,$stateParams){

    $scope.userid=$stateParams.userId;

    $http({
        method  : 'POST',
        async:   false,
        url     :     $scope.adminUrl+'admindetails',
        data    : $.param({'uid':$scope.userid}),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        console.log(data);
        $scope.form = {
            uid: data.uid,
            refferal_code: data.refferal_code,
            fname: data.fname,
            lname: data.lname,
            bname: data.bname,
            email: data.email,
            address: data.address,
            phone_no: data.phone_no,
            mobile_no: data.mobile_no,
            contact_time: data.contact_time,
        }
    });
    $scope.update = function () {

        $rootScope.stateIsLoading = true;
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'adminupdates',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $state.go('admin-list');
            return
        });
    }


})


jungledrone.controller('adminlist', function($scope,$state,$http,$cookieStore,$rootScope) {
    $scope.currentPage=1;
    $scope.perPage=3;
    $scope.begin=0;

    $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
    };

    $scope.pageChanged = function(){
        console.log($scope.currentPage);
        $scope.begin=parseInt($scope.currentPage-1)*$scope.perPage;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));
    }
    $http({
        method  : 'POST',
        async:   false,
        url     : $scope.adminUrl+'adminlist',
        // data    : $.param($scope.form),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        $rootScope.stateIsLoading = false;
        console.log(data);
        $scope.userlist=data;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


    });

    $scope.searchkey = '';
    $scope.search = function(item){

        if ( (item.fname.indexOf($scope.searchkey) != -1) || (item.lname.indexOf($scope.searchkey) != -1) ||(item.mail.indexOf($scope.searchkey) != -1)||(item.mobile_no.indexOf($scope.searchkey) != -1)||(item.phone_no.indexOf($scope.searchkey) != -1) ||(item.address.indexOf($scope.searchkey) != -1)){
            return true;
        }
        return false;
    };
    $scope.deladmin = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.userlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'deleteadmin',
            data    : $.param({uid: $scope.userlist[idx].uid}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.userlist.splice(idx,1);
            $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));

        });
    }

    $scope.changeStatus = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.userlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'updatestatus',
            data    : $.param({uid: $scope.userlist[idx].uid}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.userlist[idx].status = !$scope.userlist[idx].status;
        });
    }




    //console.log('in add admin form ');
});
jungledrone.controller('signupuserlist', function($scope,$state,$http,$cookieStore,$rootScope) {
    $scope.currentPage=1;
    $scope.perPage=2;
    $scope.begin=0;

    $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
    };

    $scope.pageChanged = function(){
        console.log($scope.currentPage);
        $scope.begin=parseInt($scope.currentPage-1)*$scope.perPage;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));
    }
    $http({
        method  : 'POST',
        async:   false,
        url     : $scope.adminUrl+'contactuserlist',
        // data    : $.param($scope.form),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        $rootScope.stateIsLoading = false;
        console.log(data);
        $scope.userlist=data;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


    });

    $scope.searchkey = '';
    $scope.search = function(item){

        if ( (item.fname.indexOf($scope.searchkey) != -1) || (item.lname.indexOf($scope.searchkey) != -1) ||(item.email.indexOf($scope.searchkey) != -1)||(item.phone.indexOf($scope.searchkey) != -1)||(item.country.indexOf($scope.searchkey) != -1) ||(item.city.indexOf($scope.searchkey) != -1)||(item.message.indexOf($scope.searchkey) != -1)){
            return true;
        }
        return false;
    };
    $scope.delcontactuser = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.userlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'deletecontactuser',
            data    : $.param({id: $scope.userlist[idx].id}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.userlist.splice(idx,1);
            $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));

        });
    }






    //console.log('in add admin form ');
});

jungledrone.controller('contactlist', function($scope,$state,$http,$cookieStore,$rootScope) {
    $scope.currentPage=1;
    $scope.perPage=4;
    $scope.begin=0;

    $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
    };

    $scope.pageChanged = function(){
        console.log($scope.currentPage);
        $scope.begin=parseInt($scope.currentPage-1)*$scope.perPage;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));
    }
    $http({
        method  : 'POST',
        async:   false,
        url     : $scope.adminUrl+'contactlist',
        // data    : $.param($scope.form),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        $rootScope.stateIsLoading = false;
        console.log(data);
        $scope.userlist=data;
        $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


    });

    $scope.searchkey = '';
    $scope.search = function(item){

        if ( (item.name.indexOf($scope.searchkey) != -1) || (item.email.indexOf($scope.searchkey) != -1) ||(item.phone.indexOf($scope.searchkey) != -1)||(item.message.indexOf($scope.searchkey) != -1)||(item.subject.indexOf($scope.searchkey) != -1) ){
            return true;
        }
        return false;
    };
    $scope.delcontact = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.userlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'deletecontact',
            data    : $.param({id: $scope.userlist[idx].id}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.userlist.splice(idx,1);
            $scope.userlistp = $scope.userlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));

        });
    }






    //console.log('in add admin form ');
});


jungledrone.controller('addevent',function($scope,$state,$http,$cookieStore,$rootScope,$log,Upload){


    $scope.form={};
    $scope.event_status=false;
    $scope.event_img=false;




    /*file upload part start */



    $scope.$watch('event_imgupload', function (files) {
        $scope.formUpload = false;
        if (files != null) {
            for (var i = 0; i < files.length; i++) {
                $scope.errorMsg = null;
                (function (file) {
                    upload(file);
                })(files[i]);
            }
        }
    });

    $scope.getReqParams = function () {
        return $scope.generateErrorOnServer ? '?errorCode=' + $scope.serverErrorCode +
        '&errorMessage=' + $scope.serverErrorMsg : '';
    };

    function upload(file) {
        $scope.errorMsg = null;
        uploadUsingUpload(file);
    }

    function uploadUsingUpload(file) {
        $('#loaderDiv').addClass('ng-hide');
        file.upload = Upload.upload({
            url: $scope.adminUrl+'uploadeventbanner' + $scope.getReqParams(),
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            fields: {'id':$rootScope.createIdeaId},
            file: file,
            fileFormDataName: 'Filedata'
        });

        file.upload.then(function (response) {
            $('.progress').removeClass('ng-hide');
            file.result = response.data;

            $scope.event_img = response.data.image_url;
            $scope.form.event_image = response.data.image_name;

            $('#loaderDiv').addClass('ng-hide');


        }, function (response) {
            if (response.status > 0)
                $scope.errorMsg = response.status + ': ' + response.data;
        });

        file.upload.progress(function (evt) {
            // Math.min is to fix IE which reports 200% sometimes
            $('#loaderDiv').removeClass('ng-hide');

            file.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));

        });

        file.upload.xhr(function (xhr) {
            // xhr.upload.addEventListener('abort', function(){console.log('abort complete')}, false);
        });
    }



    /*file upload end */








    setTimeout(function(){
        jQuery('input[name="event_daterange"]').daterangepicker({
            /* timePicker: true,
             timePickerIncrement: 30,*/
            locale: {
                format: 'MM/DD/YYYY h:mm A'
            }
        });

/*
        $('#timepicker1').timepicker({
            minuteStep: 1,
            template: 'modal',
            appendWidgetTo: 'body',
            showSeconds: true,
            showMeridian: false,
            defaultTime: false
        });
*/

    },4000);


    $scope.addeventsForm=function(){

        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addevent',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            //$rootScope.stateIsLoading = false;
            $state.go('event-list');
            console.log(data);
            /* if(data.status == 'error'){
             console.log(data);
             $('.email_div').append('<label class="control-label has-error validationMessage">This email already exists.</label>');
             }else{
             //console.log(data);
             //$cookieStore.put('user_insert_id',data);

             $state.go('finder-list');
             return;
             //console.log(data);
             }*/

        });



    }


    $scope.toggletimerange=function(){
        //console.log($scope.allday);
    }
    $scope.custom=function(){
        //console.log($scope.form);
        $scope.timeerror=false;
        $scope.form.event_status=$scope.event_status;
        //console.log($scope.timediff()+"test custom");
        if($scope.allday) {

            angular.element('#timeval').val('all day');
            $scope.form.timer='all day';

            return true;
        }
        if($scope.timediff()>0){
            $scope.form.timer=angular.element('input[ng-model="hours"]').eq(0).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()) +" to "+angular.element('input[ng-model="hours"]').eq(1).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(1).val());

            angular.element('#timeval').val(angular.element('input[ng-model="hours"]').eq(0).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()) +" to "+angular.element('input[ng-model="hours"]').eq(1).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(1).val()));
            return true ;
        }

        else {
            $scope.timeerror=true;
            return "Please set a correct time range for your event !!" ;
        }

        return true;
    }

    $scope.timediff= function () {

        /*console.log('td-'+parseInt($scope.endtime.getHours()-$scope.starttime.getHours()));
         console.log('md-'+parseInt($scope.endtime.getMinutes()-$scope.starttime.getMinutes()));*/


        ////console.log('td1-'+angular.element('input[ng-model="hours"]').eq(0).val());
        // console.log('td1-'+angular.element('input[ng-model="hours"]').eq(1).val());
        //console.log('md2-'+parseInt($scope.minutes));

        var totalst=parseInt(parseInt(angular.element('input[ng-model="hours"]').eq(0).val()*60)+parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()));
        var totalet=parseInt(parseInt(angular.element('input[ng-model="hours"]').eq(1).val()*60)+parseInt(angular.element('input[ng-model="minutes"]').eq(1).val()));


        console.log('timediff'+parseInt(totalet-totalst));

        return parseInt(totalet-totalst);

        //
        /* console.log('td1-'+angular.element('input[ng-model="minutes"]').eq(0).val());
         console.log('td1-'+angular.element('input[ng-model="minutes"]').eq(1).val());*/
        //console.log('md2-'+parseInt($scope.minutes));
    }


    $scope.showtime=false;

    $scope.toggletimepicker=function(){

        console.log("before"+$scope.showtime);
        $scope.showtime=! $scope.showtime ;
        console.log("after"+$scope.showtime);
    }


    var st=new Date();
    //console.log(st.getHours());
    st.setHours(st.getHours());
    var et=new Date();
    //console.log(st.getHours());
    et.setHours(et.getHours()+1);
    $scope.endtime = et;
    $scope.starttime = st;

    $scope.hstep = 1;
    $scope.mstep = 15;

    $scope.options = {
        hstep: [1, 2, 3],
        mstep: [1, 5, 10, 15, 25, 30]
    };

    $scope.ismeridian = false;
    $scope.toggleMode = function() {
        $scope.ismeridian = ! $scope.ismeridian;
    };

    $scope.update = function() {
        var d = new Date();
        d.setHours( 14 );
        d.setMinutes( 0 );
        $scope.starttime = d;
        d.setHours( 15 );
        d.setMinutes( 0 );
        $scope.endtime = d;

        console.log('st'+$scope.starttime);
        console.log('et'+$scope.endtime);
    };

    $scope.changed = function () {
        $log.log('Time changed to: ' + $scope.starttime);
    };

    $scope.clear = function() {
        $scope.starttime = null;
    };




});
jungledrone.controller('event',function($scope,$state,$http,$cookieStore,$rootScope){


    $scope.showdetails=function(ev){

        var target = ev.target || ev.srcElement || ev.originalTarget;


        //console.log('event-name'+$(target).attr('event-name'));
        //console.log(target);
        $('#eventdetailpopup').find('h3.evtitle').text($(target).attr('event-name'));
        $('#eventdetailpopup').find('h4.evttime').text($(target).attr('event-timerange'));
        $('#eventdetailpopup').find('h4.evtdate').text($(target).attr('event-daterange'));
        $('#eventdetailpopup').find('p.evtdesc').text($(target).attr('event-detail'));
        ///$('#eventdetailpopup').find('h3.evtdesc').text($(target).attr('event_description'));
        $('#eventdetailpopup').find('img.evimg').attr('src',$(target).attr('event-image'));
        $('#eventdetailpopup').modal('show');
    }

    $scope.eventrsvpsubmit=function(){
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'addeventrsvp',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $('#event-rsvp').modal('hide');
            $('#eventconatctModal').modal('show');
            //$rootScope.stateIsLoading = false;
            //console.log(data);
            // $scope.eventlist=data;
            // $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


        });


    }

    $scope.currentPage=1;
    $scope.perPage=3;
    $scope.begin=0;

    $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
        console.log($scope.currentPage);
    };

    $scope.pageChanged = function(){
        $scope.begin=parseInt($scope.currentPage-1)*$scope.perPage;
        $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));
    }
    $http({
        method  : 'POST',
        async:   false,
        url     : $scope.adminUrl+'eventlistfrontlisting',
        // data    : $.param($scope.form),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        $rootScope.stateIsLoading = false;
        console.log(data);
        $scope.eventlist=data;
        $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


    });

    /*   $scope.searchkey = '';
    $scope.search = function(item){

        if ( (item.event_name.indexOf($scope.searchkey) != -1) || (item.event_daterange.indexOf($scope.searchkey) != -1)  ){
            return true;
        }
        return false;
    };


*/

    $scope.genderValidator=function(){


        console.log('in gender validator');
        //console.log($scope.signupForm.$submitted);
        //console.log($("input[name='drone']:checked").val());



        if($scope.eventrsvp.$submitted){

            if(typeof ($("input[name='gender']:checked").val()) != 'undefined' )
            {
                $scope.gender_error=false;
                //console.log('in true');
                return true ;
            }
            else {
                //console.log('in false');
                $scope.gender_error=true;
                return '';

            }

        }

    }

    $scope.openmodal=function(){

        $('#event-rsvp').modal('show');
    }



});
jungledrone.controller('editevent', function($scope,$state,$http,$cookieStore,$rootScope,$stateParams,Upload,$log) {

    $scope.eventId = $stateParams.eventId;
    $scope.form={};
    $scope.event_status=false;
    $scope.event_img=false;

    $http({
        method: 'POST',
        async: false,
        url: $scope.adminUrl + 'eventdetails',
        data: $.param({'id': $scope.eventId}),  // pass in data as strings
        headers: {'Content-Type': 'application/x-www-form-urlencoded'}
    }).success(function (data) {
        console.log(data);
        if(data.event_timerange=='all day') {
            $scope.allday=true;
        }
        else{

            var result = data.event_timerange.split('to');


            var sttime=result[0].split(':');
            var sthour=parseInt(sttime[0]);
            var stmin=parseInt(sttime[1]);

            var ettime=result[1].split(':');
            var ethour=parseInt(ettime[0]);
            var etmin=parseInt(ettime[1]);

            console.log('tc='+sthour+'tm'+stmin);
            console.log('sc='+ethour+'sm'+etmin);
            console.log('thetc='+data.event_timerange);

            var st=new Date();
            //console.log(st.getHours());
            st.setHours(sthour);
            st.setMinutes(stmin);
            var et=new Date();
            //console.log(st.getHours());
            et.setHours(ethour);
            et.setMinutes(etmin);
            $scope.endtime = et;
            $scope.starttime = st;
        }

        $scope.form = {
            id: data.id,
            event_name: data.event_name,
            event_description: data.event_description,
            event_image: data.event_image,
            //event_status: data.event_status,
            event_daterange: data.event_daterange,
            event_timerange: data.event_timerange,
            phone_no: data.phone_no,
            mobile_no: data.mobile_no,
            contact_time: data.contact_time,
        }

        $scope.event_img=data.event_image;

        if(data.event_status == 1 ) {
            $scope.form.event_status=true;
            $scope.event_status=true;
        }
        else{
            $scope.form.event_status=false;
            $scope.event_status=false;


        }
    });


    $scope.$watch('event_imgupload', function (files) {
        $scope.formUpload = false;
        if (files != null) {
            for (var i = 0; i < files.length; i++) {
                $scope.errorMsg = null;
                (function (file) {
                    upload(file);
                })(files[i]);
            }
        }
    });

    $scope.getReqParams = function () {
        return $scope.generateErrorOnServer ? '?errorCode=' + $scope.serverErrorCode +
        '&errorMessage=' + $scope.serverErrorMsg : '';
    };

    function upload(file) {
        $scope.errorMsg = null;
        uploadUsingUpload(file);
    }

    function uploadUsingUpload(file) {
        $('#loaderDiv').addClass('ng-hide');
        file.upload = Upload.upload({
            url: $scope.adminUrl+'uploadeventbanner' + $scope.getReqParams(),
            method: 'POST',
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'
            },
            fields: {'id':$rootScope.createIdeaId},
            file: file,
            fileFormDataName: 'Filedata'
        });

        file.upload.then(function (response) {
            $('.progress').removeClass('ng-hide');
            file.result = response.data;

            $scope.event_img = response.data.image_url;
            $scope.form.event_image = response.data.image_name;

            $('#loaderDiv').addClass('ng-hide');


        }, function (response) {
            if (response.status > 0)
                $scope.errorMsg = response.status + ': ' + response.data;
        });

        file.upload.progress(function (evt) {
            // Math.min is to fix IE which reports 200% sometimes
            $('#loaderDiv').removeClass('ng-hide');

            file.progress = Math.min(100, parseInt(100.0 * evt.loaded / evt.total));

        });

        file.upload.xhr(function (xhr) {
            // xhr.upload.addEventListener('abort', function(){console.log('abort complete')}, false);
        });
    }



    /*file upload end */








    setTimeout(function(){
        jQuery('input[name="event_daterange"]').daterangepicker({
            /* timePicker: true,
             timePickerIncrement: 30,*/
            locale: {
                format: 'MM/DD/YYYY h:mm A'
            }
        });

        /*
         $('#timepicker1').timepicker({
         minuteStep: 1,
         template: 'modal',
         appendWidgetTo: 'body',
         showSeconds: true,
         showMeridian: false,
         defaultTime: false
         });
         */

    },4000);


    $scope.addeventsForm=function(){

        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'eventupdates',
            data    : $.param($scope.form),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            //$rootScope.stateIsLoading = false;
            $state.go('event-list');
            console.log(data);
            /* if(data.status == 'error'){
             console.log(data);
             $('.email_div').append('<label class="control-label has-error validationMessage">This email already exists.</label>');
             }else{
             //console.log(data);
             //$cookieStore.put('user_insert_id',data);

             $state.go('finder-list');
             return;
             //console.log(data);
             }*/

        });



    }


    $scope.toggletimerange=function(){
        //console.log($scope.allday);
    }
    $scope.custom=function(){
        //console.log($scope.form);
        $scope.timeerror=false;
        $scope.form.event_status=$scope.event_status;
        //console.log($scope.timediff()+"test custom");
        if($scope.allday) {

            angular.element('#timeval').val('all day');
            $scope.form.timer='all day';

            return true;
        }
        if($scope.timediff()>0){

            console.log($scope.form.timer);
            $scope.form.timer=angular.element('input[ng-model="hours"]').eq(0).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()) +" to "+angular.element('input[ng-model="hours"]').eq(1).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(1).val());

            angular.element('#timeval').val(angular.element('input[ng-model="hours"]').eq(0).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()) +" to "+angular.element('input[ng-model="hours"]').eq(1).val()+' : ' +parseInt(angular.element('input[ng-model="minutes"]').eq(1).val()));
            return true ;
        }

        else {
            $scope.timeerror=true;
            return "Please set a correct time range for your event !!" ;
        }

        return true;
    }

    $scope.timediff= function () {

        /*console.log('td-'+parseInt($scope.endtime.getHours()-$scope.starttime.getHours()));
         console.log('md-'+parseInt($scope.endtime.getMinutes()-$scope.starttime.getMinutes()));*/


        ////console.log('td1-'+angular.element('input[ng-model="hours"]').eq(0).val());
        // console.log('td1-'+angular.element('input[ng-model="hours"]').eq(1).val());
        //console.log('md2-'+parseInt($scope.minutes));

        var totalst=parseInt(parseInt(angular.element('input[ng-model="hours"]').eq(0).val()*60)+parseInt(angular.element('input[ng-model="minutes"]').eq(0).val()));
        var totalet=parseInt(parseInt(angular.element('input[ng-model="hours"]').eq(1).val()*60)+parseInt(angular.element('input[ng-model="minutes"]').eq(1).val()));


        console.log('timediff'+parseInt(totalet-totalst));

        return parseInt(totalet-totalst);

        //
        /* console.log('td1-'+angular.element('input[ng-model="minutes"]').eq(0).val());
         console.log('td1-'+angular.element('input[ng-model="minutes"]').eq(1).val());*/
        //console.log('md2-'+parseInt($scope.minutes));
    }


    $scope.showtime=false;

    $scope.toggletimepicker=function(){

        console.log("before"+$scope.showtime);
        $scope.showtime=! $scope.showtime ;
        console.log("after"+$scope.showtime);
    }


    var st=new Date();
    //console.log(st.getHours());
    st.setHours(st.getHours());
    var et=new Date();
    //console.log(st.getHours());
    et.setHours(et.getHours()+1);
    $scope.endtime = et;
    $scope.starttime = st;

    $scope.hstep = 1;
    $scope.mstep = 15;

    $scope.options = {
        hstep: [1, 2, 3],
        mstep: [1, 5, 10, 15, 25, 30]
    };

    $scope.ismeridian = false;
    $scope.toggleMode = function() {
        $scope.ismeridian = ! $scope.ismeridian;
    };

    $scope.update = function() {
        var d = new Date();
        d.setHours( 14 );
        d.setMinutes( 0 );
        $scope.starttime = d;
        d.setHours( 15 );
        d.setMinutes( 0 );
        $scope.endtime = d;

        console.log('st'+$scope.starttime);
        console.log('et'+$scope.endtime);
    };

    $scope.changed = function () {
        $log.log('Time changed to: ' + $scope.starttime);
    };

    $scope.clear = function() {
        $scope.starttime = null;
    };




})

jungledrone.controller('eventlist',function($scope,$state,$http,$cookieStore,$rootScope){



    $scope.currentPage=1;
    $scope.perPage=3;
    $scope.begin=0;

    $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
        console.log($scope.currentPage);
    };

    $scope.pageChanged = function(){
        $scope.begin=parseInt($scope.currentPage-1)*$scope.perPage;
        $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));
    }
    $http({
        method  : 'POST',
        async:   false,
        url     : $scope.adminUrl+'eventlist',
        // data    : $.param($scope.form),  // pass in data as strings
        headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
    }) .success(function(data) {
        $rootScope.stateIsLoading = false;
        console.log(data);
        $scope.eventlist=data;
        $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));


    });

    $scope.searchkey = '';
    $scope.search = function(item){

        if ( (item.event_name.indexOf($scope.searchkey) != -1) || (item.event_daterange.indexOf($scope.searchkey) != -1)  ){
            return true;
        }
        return false;
    };

    $scope.delevent = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.eventlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'deleteevent',
            data    : $.param({id: $scope.eventlist[idx].id}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.eventlist.splice(idx,1);
            $scope.eventlistp = $scope.eventlist.slice($scope.begin, parseInt($scope.begin+$scope.perPage));

        });
    }


    $scope.changeStatus = function(item){
        $rootScope.stateIsLoading = true;
        var idx = $scope.eventlist.indexOf(item);
        $http({
            method  : 'POST',
            async:   false,
            url     : $scope.adminUrl+'updateeventstatus',
            data    : $.param({id: $scope.eventlist[idx].id,event_status: $scope.eventlist[idx].event_status}),  // pass in data as strings
            headers : { 'Content-Type': 'application/x-www-form-urlencoded' }
        }) .success(function(data) {
            $rootScope.stateIsLoading = false;
            $scope.eventlist[idx].status = !$scope.eventlist[idx].status;
        });
    }






});

jungledrone.controller('admin_header', function($scope,$state,$http,$cookieStore,$rootScope) {
    // $state.go('login');
    angular.element('head').append('<link id="home" href="css/admin_style.css" rel="stylesheet">');

    $scope.toggledropdown=function(){

        //angular.element('.user-manu-dropdown').toggleClass('open');
        console.log('in user login');
    }


    //angular.element('head').append('<script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>');
    //angular.element('head').append('<script src="ng-js/ui-bootstrap-tpls-0.14.3.min.js"></script>');
    if(angular.element('head').find('script[src="plugins/fastclick/fastclick.min.js"]').length==0)
        angular.element('head').append('<script src="plugins/fastclick/fastclick.min.js"></script>');
    if(angular.element('head').find('script[src="dist/js/app.min.js"]').length==0)
        angular.element('head').append('<script src="dist/js/app.min.js"></script>');
    if(angular.element('head').find('script[src="plugins/sparkline/jquery.sparkline.min.js"]').length==0)
        angular.element('head').append('<script src="plugins/sparkline/jquery.sparkline.min.js"></script>');
    if(angular.element('head').find('script[src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"]').length==0)
        angular.element('head').append('<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>');
    if(angular.element('head').find('script[src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"]').length==0)
        angular.element('head').append('<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>');
    if(angular.element('head').find('script[src="plugins/slimScroll/jquery.slimscroll.min.js"]').length==0)
        angular.element('head').append('<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>');
    if(angular.element('head').find('script[src="dist/js/pages/dashboard2.js"]').length==0)
        angular.element('head').append('<script src="dist/js/pages/dashboard2.js"></script>');
    if(angular.element('head').find('script[src="dist/js/demo.js"]').length==0)
        angular.element('head').append('<script src="dist/js/demo.js"></script>');
    /*
     angular.element('head').append('<script>+setTimeout(function(){
     $('input[name="event_daterange"]').daterangepicker({
     timePicker: true,
     timePickerIncrement: 30,
     locale: {
     format: 'MM/DD/YYYY h:mm A'
     }
     });
     }, 2000);)+'</script>'
     */



    $scope.logout = function () {
        $cookieStore.remove('userid');
        $cookieStore.remove('username');
        $cookieStore.remove('useremail');
        $cookieStore.remove('userfullname');
        $state.go('index');
    }

    if (typeof($cookieStore.get('userid')) != 'undefined' && $cookieStore.get('userid') > 0) {

        $rootScope.userfullname=$cookieStore.get('userfullname');
        console.log($rootScope.userfullname);
    }
    else{
        $state.go('login');
    }





// console.log('in admin header');
});


jungledrone.controller('services', function($scope,$state,$http,$cookieStore,$rootScope) {
    // $state.go('login');
    angular.element('head').append('<link id="home" href="css/admin_style.css" rel="stylesheet">');

    setTimeout(function(){

        $('.vmtog').click(function(){

            console.log('in');
//$(this).css('margin-top','-20px');
            $(this).prev('div').stop(true, true).delay(500).toggleClass('ng-hide');
            $(this).prev().prev('p').stop(true, true).delay(500).toggleClass('ng-hide');

            var text = $(this).html() == 'View more' ? 'Close' : 'View more';
            $(this).html(text);
        });


},2000);
});


jungledrone.controller('stockphoto', function($scope,$state,$http,$cookieStore,$rootScope) {
    // $state.go('login');

    $scope.showmodal=function($ev){

        var target = $ev.target || $ev.srcElement || $ev.originalTarget;

        console.log($(target).html());
        console.log($(target).attr('class'));
        $('#gallerymodal').find('h2').find('img').attr('src','');
        $('#gallerymodal').find('h2').find('img').attr('src',$(target).attr('imgsrc'));

        $('#gallerymodal').modal('show');
        // $(event.target).parent().parent().css('display','none');


    }

});

jungledrone.controller('dashboard', function($scope,$state,$http,$cookieStore,$rootScope) {
    // $state.go('login');

    $scope.logout = function () {
        $cookieStore.remove('userid');
        $cookieStore.remove('username');
        $cookieStore.remove('useremail');
        $cookieStore.remove('userfullname');
        $state.go('index');
    }

});


