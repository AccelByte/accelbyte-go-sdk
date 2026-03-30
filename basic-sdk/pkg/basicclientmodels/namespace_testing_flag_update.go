// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// NamespaceTestingFlagUpdate Namespace testing flag update
//
// swagger:model Namespace testing flag update.
type NamespaceTestingFlagUpdate struct {

	// testing flag to indicate whether the namespace is for testing purposes
	// Required: true
	IsTesting *bool `json:"isTesting"`
}

// Validate validates this Namespace testing flag update
func (m *NamespaceTestingFlagUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsTesting(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *NamespaceTestingFlagUpdate) validateIsTesting(formats strfmt.Registry) error {

	if err := validate.Required("isTesting", "body", m.IsTesting); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *NamespaceTestingFlagUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *NamespaceTestingFlagUpdate) UnmarshalBinary(b []byte) error {
	var res NamespaceTestingFlagUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
