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

// ModelWebReauthProcessResponse Model web reauth process response
//
// swagger:model Model web reauth process response.
type ModelWebReauthProcessResponse struct {

	// Populated only for operation=LINK. Contains platform linking details.
	LinkResponse *ModelLinkRequestResponse `json:"linkResponse,omitempty"`

	// Operation type for this re-auth request. Enum: LINK, GDPR
	// Required: true
	Operation *string `json:"operation"`

	// Enum: SUCCESS, PENDING, FAILED
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Model web reauth process response
func (m *ModelWebReauthProcessResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateOperation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelWebReauthProcessResponse) validateOperation(formats strfmt.Registry) error {

	if err := validate.Required("operation", "body", m.Operation); err != nil {
		return err
	}

	return nil
}

func (m *ModelWebReauthProcessResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelWebReauthProcessResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelWebReauthProcessResponse) UnmarshalBinary(b []byte) error {
	var res ModelWebReauthProcessResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
