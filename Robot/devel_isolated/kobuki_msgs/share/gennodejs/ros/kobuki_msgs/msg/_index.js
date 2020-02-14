
"use strict";

let ScanAngle = require('./ScanAngle.js');
let SensorState = require('./SensorState.js');
let DockInfraRed = require('./DockInfraRed.js');
let KeyboardInput = require('./KeyboardInput.js');
let Sound = require('./Sound.js');
let CliffEvent = require('./CliffEvent.js');
let ExternalPower = require('./ExternalPower.js');
let ButtonEvent = require('./ButtonEvent.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let MotorPower = require('./MotorPower.js');
let Led = require('./Led.js');
let BumperEvent = require('./BumperEvent.js');
let DigitalOutput = require('./DigitalOutput.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let VersionInfo = require('./VersionInfo.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingResult = require('./AutoDockingResult.js');

module.exports = {
  ScanAngle: ScanAngle,
  SensorState: SensorState,
  DockInfraRed: DockInfraRed,
  KeyboardInput: KeyboardInput,
  Sound: Sound,
  CliffEvent: CliffEvent,
  ExternalPower: ExternalPower,
  ButtonEvent: ButtonEvent,
  DigitalInputEvent: DigitalInputEvent,
  MotorPower: MotorPower,
  Led: Led,
  BumperEvent: BumperEvent,
  DigitalOutput: DigitalOutput,
  RobotStateEvent: RobotStateEvent,
  ControllerInfo: ControllerInfo,
  PowerSystemEvent: PowerSystemEvent,
  WheelDropEvent: WheelDropEvent,
  VersionInfo: VersionInfo,
  AutoDockingAction: AutoDockingAction,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingResult: AutoDockingResult,
};
