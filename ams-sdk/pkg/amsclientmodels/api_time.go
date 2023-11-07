// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APITime Api time
//
// swagger:model Api time.
type APITime struct {

	// ext
	// Required: true
	// Format: int64
	Ext *int64 `json:"ext"`

	// loc
	// Required: true
	Loc *TimeLocation `json:"loc"`

	// wall
	// Required: true
	// Format: integer
	Wall *int64 `json:"wall"`
}

// Validate validates this Api time
func (m *APITime) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLoc(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWall(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APITime) validateExt(formats strfmt.Registry) error {

	if err := validate.Required("ext", "body", m.Ext); err != nil {
		return err
	}

	return nil
}

func (m *APITime) validateLoc(formats strfmt.Registry) error {

	if err := validate.Required("loc", "body", m.Loc); err != nil {
		return err
	}

	if m.Loc != nil {
		if err := m.Loc.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("loc")
			}
			return err
		}
	}

	return nil
}

func (m *APITime) validateWall(formats strfmt.Registry) error {

	if err := validate.Required("wall", "body", m.Wall); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APITime) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APITime) UnmarshalBinary(b []byte) error {
	var res APITime
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
