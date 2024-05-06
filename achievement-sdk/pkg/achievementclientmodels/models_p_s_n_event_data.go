// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPSNEventData Models PSN event data
//
// swagger:model Models PSN event data.
type ModelsPSNEventData struct {

	// eventname
	// Required: true
	EventName *string `json:"eventName"`

	// properties
	// Required: true
	Properties interface{} `json:"properties"`
}

// Validate validates this Models PSN event data
func (m *ModelsPSNEventData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPSNEventData) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("eventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPSNEventData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPSNEventData) UnmarshalBinary(b []byte) error {
	var res ModelsPSNEventData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
