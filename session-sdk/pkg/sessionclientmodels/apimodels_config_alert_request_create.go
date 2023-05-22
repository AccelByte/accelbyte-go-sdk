// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsConfigAlertRequestCreate Apimodels config alert request create
//
// swagger:model Apimodels config alert request create.
type ApimodelsConfigAlertRequestCreate struct {

	// durationdays
	// Required: true
	// Format: int32
	DurationDays *int32 `json:"durationDays"`
}

// Validate validates this Apimodels config alert request create
func (m *ApimodelsConfigAlertRequestCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDurationDays(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsConfigAlertRequestCreate) validateDurationDays(formats strfmt.Registry) error {

	if err := validate.Required("durationDays", "body", m.DurationDays); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsConfigAlertRequestCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsConfigAlertRequestCreate) UnmarshalBinary(b []byte) error {
	var res ApimodelsConfigAlertRequestCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
