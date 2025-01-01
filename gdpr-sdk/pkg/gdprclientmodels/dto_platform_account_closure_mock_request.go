// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOPlatformAccountClosureMockRequest Dto platform account closure mock request
//
// swagger:model Dto platform account closure mock request.
type DTOPlatformAccountClosureMockRequest struct {

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// sandbox
	// Required: true
	Sandbox *string `json:"sandbox"`

	// start the account closure process immediately
	// Required: true
	StartImmediately *bool `json:"startImmediately"`
}

// Validate validates this Dto platform account closure mock request
func (m *DTOPlatformAccountClosureMockRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSandbox(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartImmediately(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DTOPlatformAccountClosureMockRequest) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *DTOPlatformAccountClosureMockRequest) validateSandbox(formats strfmt.Registry) error {

	if err := validate.Required("sandbox", "body", m.Sandbox); err != nil {
		return err
	}

	return nil
}

func (m *DTOPlatformAccountClosureMockRequest) validateStartImmediately(formats strfmt.Registry) error {

	if err := validate.Required("startImmediately", "body", m.StartImmediately); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOPlatformAccountClosureMockRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOPlatformAccountClosureMockRequest) UnmarshalBinary(b []byte) error {
	var res DTOPlatformAccountClosureMockRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
