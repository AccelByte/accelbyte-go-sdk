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

// ModelsMultipleUX Models multiple UX
//
// swagger:model Models multiple UX.
type ModelsMultipleUX struct {

	// ux
	// Required: true
	UX []*ModelsUX `json:"UX"`
}

// Validate validates this Models multiple UX
func (m *ModelsMultipleUX) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUX(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMultipleUX) validateUX(formats strfmt.Registry) error {

	if err := validate.Required("UX", "body", m.UX); err != nil {
		return err
	}

	for i := 0; i < len(m.UX); i++ {
		if swag.IsZero(m.UX[i]) { // not required
			continue
		}

		if m.UX[i] != nil {
			if err := m.UX[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("UX" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMultipleUX) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMultipleUX) UnmarshalBinary(b []byte) error {
	var res ModelsMultipleUX
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
