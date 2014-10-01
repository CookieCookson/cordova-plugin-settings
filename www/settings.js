var argscheck = require('cordova/argscheck'),
    channel = require('cordova/channel'),
    utils = require('cordova/utils'),
    exec = require('cordova/exec'),
    cordova = require('cordova');

var Settings = {};

Settings.openSettings = function(successCallback, errorCallback) {
    exec(successCallback, errorCallback, "Settings", "openSettings", []);
};

module.exports = new Settings();