
"use strict";

let Attitude = require('./Attitude.js');
let Airspeed = require('./Airspeed.js');
let GPS = require('./GPS.js');
let Barometer = require('./Barometer.js');
let OutputRaw = require('./OutputRaw.js');
let RCRaw = require('./RCRaw.js');
let Status = require('./Status.js');
let Command = require('./Command.js');

module.exports = {
  Attitude: Attitude,
  Airspeed: Airspeed,
  GPS: GPS,
  Barometer: Barometer,
  OutputRaw: OutputRaw,
  RCRaw: RCRaw,
  Status: Status,
  Command: Command,
};
