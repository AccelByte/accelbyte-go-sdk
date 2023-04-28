// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboardclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// V2Entry V2 entry
//
// swagger:model V2 entry.
type V2Entry struct {

	// additionaldata
	AdditionalData interface{} `json:"additionalData,omitempty"`

	// hidden
	Hidden bool `json:"hidden"`

	// point
	// Required: true
	// Format: double
	Point *float64 `json:"point"`
}

// Validate validates this V2 entry
func (m *V2Entry) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePoint(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *V2Entry) validatePoint(formats strfmt.Registry) error {

	if err := validate.Required("point", "body", m.Point); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *V2Entry) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *V2Entry) UnmarshalBinary(b []byte) error {
	var res V2Entry
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
