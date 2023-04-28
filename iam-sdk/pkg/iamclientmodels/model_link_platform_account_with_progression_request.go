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

// ModelLinkPlatformAccountWithProgressionRequest Model link platform account with progression request
//
// swagger:model Model link platform account with progression request.
type ModelLinkPlatformAccountWithProgressionRequest struct {

	// chosennamespaces
	// Required: true
	ChosenNamespaces []string `json:"chosenNamespaces"`

	// requestid
	// Required: true
	RequestID *string `json:"requestId"`
}

// Validate validates this Model link platform account with progression request
func (m *ModelLinkPlatformAccountWithProgressionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChosenNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelLinkPlatformAccountWithProgressionRequest) validateChosenNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("chosenNamespaces", "body", m.ChosenNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkPlatformAccountWithProgressionRequest) validateRequestID(formats strfmt.Registry) error {

	if err := validate.Required("requestId", "body", m.RequestID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkPlatformAccountWithProgressionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkPlatformAccountWithProgressionRequest) UnmarshalBinary(b []byte) error {
	var res ModelLinkPlatformAccountWithProgressionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
