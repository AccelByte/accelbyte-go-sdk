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

// ModelUserDeletionStatusResponse Model user deletion status response
//
// swagger:model Model user deletion status response.
type ModelUserDeletionStatusResponse struct {

	// deletionstatus
	// Required: true
	DeletionStatus *bool `json:"deletionStatus"`
}

// Validate validates this Model user deletion status response
func (m *ModelUserDeletionStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeletionStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserDeletionStatusResponse) validateDeletionStatus(formats strfmt.Registry) error {

	if err := validate.Required("deletionStatus", "body", m.DeletionStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserDeletionStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserDeletionStatusResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserDeletionStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
