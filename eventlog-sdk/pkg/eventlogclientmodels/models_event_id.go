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

// ModelsEventID Models event ID
//
// swagger:model Models event ID.
type ModelsEventID struct {

	// description
	// Required: true
	Description *string `json:"Description"`

	// eventid
	// Required: true
	// Format: int32
	EventID *int32 `json:"EventID"`
}

// Validate validates this Models event ID
func (m *ModelsEventID) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsEventID) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsEventID) validateEventID(formats strfmt.Registry) error {

	if err := validate.Required("EventID", "body", m.EventID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsEventID) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsEventID) UnmarshalBinary(b []byte) error {
	var res ModelsEventID
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
