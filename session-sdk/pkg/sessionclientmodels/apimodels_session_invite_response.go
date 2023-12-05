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

// ApimodelsSessionInviteResponse Apimodels session invite response
//
// swagger:model Apimodels session invite response.
type ApimodelsSessionInviteResponse struct {

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserID"`
}

// Validate validates this Apimodels session invite response
func (m *ApimodelsSessionInviteResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsSessionInviteResponse) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserID", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSessionInviteResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSessionInviteResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsSessionInviteResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
