// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsEventLevel Models event level
//
// swagger:model Models event level.
type ModelsEventLevel struct {

	// description
	// Required: true
	Description *string `json:"Description"`

	// eventlevel
	// Required: true
	// Format: int32
	EventLevel *int32 `json:"EventLevel"`
}

// Validate validates this Models event level
func (m *ModelsEventLevel) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventLevel(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsEventLevel) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventLevel) validateEventLevel(formats strfmt.Registry) error {

	if err := validate.Required("EventLevel", "body", m.EventLevel); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsEventLevel) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsEventLevel) UnmarshalBinary(b []byte) error {
	var res ModelsEventLevel
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
