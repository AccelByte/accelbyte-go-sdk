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

// ModelsMultipleEventLevel Models multiple event level
//
// swagger:model Models multiple event level.
type ModelsMultipleEventLevel struct {

	// eventlevel
	// Required: true
	EventLevel []*ModelsEventLevel `json:"EventLevel"`
}

// Validate validates this Models multiple event level
func (m *ModelsMultipleEventLevel) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventLevel(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMultipleEventLevel) validateEventLevel(formats strfmt.Registry) error {

	if err := validate.Required("EventLevel", "body", m.EventLevel); err != nil {
		return err
	}

	for i := 0; i < len(m.EventLevel); i++ {
		if swag.IsZero(m.EventLevel[i]) { // not required
			continue
		}

		if m.EventLevel[i] != nil {
			if err := m.EventLevel[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("EventLevel" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMultipleEventLevel) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMultipleEventLevel) UnmarshalBinary(b []byte) error {
	var res ModelsMultipleEventLevel
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
