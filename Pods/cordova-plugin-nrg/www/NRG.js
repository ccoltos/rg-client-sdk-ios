var exec = require('cordova/exec');

exports.startGame = function(success, error) {
    exec(success, error, "NRG", "startGame", []);
};
