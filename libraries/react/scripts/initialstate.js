var trainee = require("./testdata/trainee");
var trainees = require("./testdata/trainees");
var tas = require("./testdata/tas");
var events = require("./testdata/events-small");
var rolls = require("./testdata/rolls");
var iSlips = require("./testdata/individualSlips");
var gSlips = require("./testdata/groupSlips");
var term = require("./testdata/term");
var groupevents = require("./testdata/groupevents");
import { TA_IS_INFORMED } from './constants'

//see attendance_react.html
if (typeof Trainee !== 'undefined') {
  if (Trainee.constructor === Array) {
    trainee = Trainee[0];
  } else {
    trainee = Trainee;
  }
}
if (typeof Term !== 'undefined') {
  if (Term.constructor === Array) {
    term = Term[0];
  } else {
    term = Term;
  }
}
if (typeof Trainees !== 'undefined') {
  trainees = Trainees;
}
if (typeof TAs !== 'undefined') {
  tas = TAs;
}
if (typeof Events !== 'undefined') {
  events = Events;
}
if (typeof GroupEvents !== 'undefined') {
  groupevents = GroupEvents;
}
if (typeof Rolls !== 'undefined') {
  rolls = Rolls;
}
if (typeof IndividualSlips !== 'undefined') {
  iSlips = IndividualSlips;
}
if (typeof GroupSlips !== 'undefined') {
  gSlips = GroupSlips;
}

var initialState = {
  show: 'summary',
  form: {
    rollStatus: {},
    leaveSlip: {
      description: "",
      slipType: {},
      ta_informed: TA_IS_INFORMED,
      ta: {},
      id: null,
    },
    groupSlip: {
      description: "",
      slipType: {},
      ta_informed: TA_IS_INFORMED,
      ta: {},
      trainees: [],
      id: null,
    },
    traineeView: trainee,
  },
  selectedEvents: [],
  date: new Date(),
  rolls: rolls,
  leaveslips: iSlips,
  groupslips: gSlips,
  groupevents: groupevents,
  events: events,
  trainee: trainee,
  trainees: trainees,
  tas: tas,
  term: term,
  showLegend: false,

  submitting: false,
  formSuccess: null,

};

export default initialState;