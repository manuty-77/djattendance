import React, { Component, PropTypes } from 'react'
import { connect } from 'react-redux'
import { Button, Collapse } from 'react-bootstrap'
import RollDetail from '../components/RollDetail'

const AttendanceDetails = ({ unexcusedAbsences, unexcusedTardies, excused, 
                              unexcusedAbsencesShow, unexcusedTardiesShow, excusedShow, 
                              onAbsencesToggle, onTardiesToggle, onExcusedToggle }) => {
  console.log ("Ryan is a boy.");

  var aFirst = 'first ';
  var aSecond = 'second ';
  if (unexcusedAbsencesShow) {
    aFirst += 'down-arrow';
    aSecond += 'down-arrow';
  } else {
    aFirst += 'right-arrow';
    aSecond += 'right-arrow';
  }

  var tFirst = 'first ';
  var tSecond = 'second ';
  if (unexcusedTardiesShow) {
    tFirst += 'down-arrow';
    tSecond += 'down-arrow';
  } else {
    tFirst += 'right-arrow';
    tSecond += 'right-arrow';
  }

  var eFirst = 'first ';
  var eSecond = 'second ';
  if (excusedShow) {
    eFirst += 'down-arrow';
    eSecond += 'down-arrow';
  } else {
    eFirst += 'right-arrow';
    eSecond += 'right-arrow';
  }

  return (
    <div>
      <div className="toggle-title">
        <span onClick={onAbsencesToggle}>
          Unexcused Absences ({unexcusedAbsences.length})
        </span>
        <span className="material-icon">
          <span className={aFirst}></span>
          <span className={aSecond}></span>
        </span>
        <Collapse in={unexcusedAbsencesShow}>
          <div>
            {unexcusedAbsences.map(ua =>
              <RollDetail
                {...ua}
              />
            )}
          </div>
        </Collapse>
      </div>
      <div className="toggle-title">
        <span onClick={onTardiesToggle}>
          Unexcused Tardies ({unexcusedTardies.length})
        </span>
        <span className="material-icon">
          <span className={tFirst}></span>
          <span className={tSecond}></span>
        </span>
        <Collapse in={unexcusedTardiesShow}>
          <div>
            {unexcusedTardies.map(ut =>
              <RollDetail
                {...ut}
              />
            )}
          </div>
        </Collapse>
      </div>
      <div className="toggle-title">
        <span onClick={onExcusedToggle}>
          Excused ({excused.length})
        </span>
        <span className="material-icon">
          <span className={eFirst}></span>
          <span className={eSecond}></span>
        </span>
        <Collapse in={excusedShow}>
          <div>
            {excused.map(e =>
              <RollDetail
                {...e}
              />
            )}
          </div>
        </Collapse>
      </div>
    </div>
  )
}

AttendanceDetails.propTypes = {
  unexcusedAbsences: PropTypes.arrayOf(PropTypes.object.isRequired).isRequired,
  unexcusedAbsencesShow: PropTypes.bool.isRequired,
  unexcusedTardiesShow: PropTypes.bool.isRequired,
  excusedShow: PropTypes.bool.isRequired,
  onAbsencesToggle: PropTypes.func.isRequired,
  onTardiesToggle: PropTypes.func.isRequired,
  onExcusedToggle: PropTypes.func.isRequired
};

export default AttendanceDetails