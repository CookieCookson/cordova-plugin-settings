var exec = require('cordova/exec');

module.exports = {
    openSettings: function() {
        exec(null, null, "Settings", "openSettings", []);
    }
};