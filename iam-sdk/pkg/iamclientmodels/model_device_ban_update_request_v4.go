// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelDeviceBanUpdateRequestV4 Model device ban update request V4
//
// swagger:model Model device ban update request V4.
type ModelDeviceBanUpdateRequestV4 struct {

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`
}

// Validate validates this Model device ban update request V4
func (m *ModelDeviceBanUpdateRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceBanUpdateRequestV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceBanUpdateRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceBanUpdateRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceBanUpdateRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
