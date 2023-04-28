// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CreatePolicyVersionRequest Create policy version request
//
// swagger:model Create policy version request.
type CreatePolicyVersionRequest struct {

	// description
	Description string `json:"description,omitempty"`

	// displayversion
	DisplayVersion string `json:"displayVersion,omitempty"`

	// iscommitted
	IsCommitted bool `json:"isCommitted"`
}

// Validate validates this Create policy version request
func (m *CreatePolicyVersionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CreatePolicyVersionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CreatePolicyVersionRequest) UnmarshalBinary(b []byte) error {
	var res CreatePolicyVersionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
