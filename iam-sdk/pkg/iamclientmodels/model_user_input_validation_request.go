// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelUserInputValidationRequest Model user input validation request
//
// swagger:model Model user input validation request.
type ModelUserInputValidationRequest struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// uniquedisplayname
	UniqueDisplayName string `json:"uniqueDisplayName,omitempty"`

	// username
	Username string `json:"username,omitempty"`
}

// Validate validates this Model user input validation request
func (m *ModelUserInputValidationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserInputValidationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserInputValidationRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserInputValidationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
