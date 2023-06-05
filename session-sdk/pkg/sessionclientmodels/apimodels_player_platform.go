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

// ApimodelsPlayerPlatform Apimodels player platform
//
// swagger:model Apimodels player platform.
type ApimodelsPlayerPlatform struct {

	// currentplatform
	// Required: true
	CurrentPlatform *string `json:"currentPlatform"`

	// userid
	// Required: true
	UserID *string `json:"userID"`
}

// Validate validates this Apimodels player platform
func (m *ApimodelsPlayerPlatform) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPlayerPlatform) validateCurrentPlatform(formats strfmt.Registry) error {

	if err := validate.Required("currentPlatform", "body", m.CurrentPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPlayerPlatform) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPlayerPlatform) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPlayerPlatform) UnmarshalBinary(b []byte) error {
	var res ApimodelsPlayerPlatform
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
