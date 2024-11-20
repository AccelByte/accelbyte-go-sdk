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

// ApimodelsSessionInviteRequest Apimodels session invite request
//
// swagger:model Apimodels session invite request.
type ApimodelsSessionInviteRequest struct {

	// metadata
	Metadata map[string]string `json:"metadata,omitempty"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformID"`

	// userid
	// Required: true
	UserID *string `json:"userID"`
}

// Validate validates this Apimodels session invite request
func (m *ApimodelsSessionInviteRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
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

func (m *ApimodelsSessionInviteRequest) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformID", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSessionInviteRequest) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSessionInviteRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSessionInviteRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsSessionInviteRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
