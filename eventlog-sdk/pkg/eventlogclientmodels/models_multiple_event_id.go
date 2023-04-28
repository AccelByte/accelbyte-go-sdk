// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMultipleEventID Models multiple event ID
//
// swagger:model Models multiple event ID.
type ModelsMultipleEventID struct {

	// eventids
	// Required: true
	EventIDs []*ModelsEventID `json:"EventIDs"`
}

// Validate validates this Models multiple event ID
func (m *ModelsMultipleEventID) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMultipleEventID) validateEventIDs(formats strfmt.Registry) error {

	if err := validate.Required("EventIDs", "body", m.EventIDs); err != nil {
		return err
	}

	for i := 0; i < len(m.EventIDs); i++ {
		if swag.IsZero(m.EventIDs[i]) { // not required
			continue
		}

		if m.EventIDs[i] != nil {
			if err := m.EventIDs[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("EventIDs" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMultipleEventID) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMultipleEventID) UnmarshalBinary(b []byte) error {
	var res ModelsMultipleEventID
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
