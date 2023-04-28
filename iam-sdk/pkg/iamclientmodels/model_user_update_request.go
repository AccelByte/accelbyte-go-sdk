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

// ModelUserUpdateRequest Model user update request
//
// swagger:model Model user update request.
type ModelUserUpdateRequest struct {

	// country
	Country string `json:"Country,omitempty"`

	// dateofbirth
	DateOfBirth string `json:"DateOfBirth,omitempty"`

	// displayname
	DisplayName string `json:"DisplayName,omitempty"`

	// languagetag
	LanguageTag string `json:"LanguageTag,omitempty"`
}

// Validate validates this Model user update request
func (m *ModelUserUpdateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserUpdateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserUpdateRequest) UnmarshalBinary(b []byte) error {
	var res ModelUserUpdateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
