/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
(function (ng) {
    var mod = ng.module("clienteModule", ['ui.router']);

    mod.constant("clientesContext", "api/clientes");

    mod.config(['$stateProvider', '$urlRouterProvider', function ($stateProvider, $urlRouterProvider) {
            var basePath = 'src/modules/cliente/';
            $urlRouterProvider.otherwise("/clientesList");

            $stateProvider.state('clientes', {
                url: '/clientes',
                abstract: true,
                resolve: {
                    clientes: ['$http', function ($http) {
                            return $http.get('data/clientes.json');
                        }]
                },
                views: {
                    'mainView': {
                        templateUrl: basePath + 'cliente.html',
                        controller: ['$scope', 'clientes', function ($scope, clientes) {
                                $scope.clienteRecords = clientes.data;
                            }]
                    }
                }

            }).state('clientesList', {
                url: '/list',
                parent:'clientes',
                views: {
                    'listView': {
                        templateUrl: basePath + 'cliente.list.html'
//                        templateUrl: 'src/modules/funcion/funcion.list.html'
                    }
                }
            }).state('clienteEntradas', {
                url: '{usuario}/entradas',
                parent: 'clientes',
                param: {
                    usuario: null
                },
                views: {
                    'listView': {
                        resolve: {
                            entradas: ['$http', function($http) {
                                    return $http.get('data/entradas.json');
                                }]
                        },
                        templateUrl: basePath + 'clienteEntradas.html',
                        controller: ['$scope', 'entradas', '$stateParams', function($scope,entradas,$params) {
                                $scope.entradaRecords = entradas.data;
                        }]
                    }
                }
            });
        }
    ]);
})(window.angular);


