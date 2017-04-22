import React from 'react'
import Form from 'react-formal'

import { INFORMED, TA_IS_INFORMED } from '../constants'

const TAInformedField = (props) => (
  <div>
    <h4 className='dt-leaveslip__title'>TA informed (if any)</h4>
    <Form.Field type='dropdownList' name='ta_informed' className="dt-leaveslip__ta-informed" data={INFORMED} valueField='id' textField='name' />
    {
      props.taInformed.id == TA_IS_INFORMED.id &&
      <Form.Field type='dropdownList' data={props.tas} name='ta' placeholder='Choose a TA' className="dt-leaveslip__ta-list" valueField='id' textField='name' />
    }
  </div>
)

export default TAInformedField
