// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// Subscribable Subscribable
//
// swagger:model Subscribable.
type Subscribable struct {

	// subscribable
	// Required: true
	Subscribable *bool `json:"subscribable"`
}

// Validate validates this Subscribable
func (m *Subscribable) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSubscribable(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *Subscribable) validateSubscribable(formats strfmt.Registry) error {

	if err := validate.Required("subscribable", "body", m.Subscribable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Subscribable) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Subscribable) UnmarshalBinary(b []byte) error {
	var res Subscribable
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
