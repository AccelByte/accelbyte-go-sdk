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

// ModelUserIdentityUpdateRequestV3 Model user identity update request V3
//
// swagger:model Model user identity update request V3.
type ModelUserIdentityUpdateRequestV3 struct {

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// password
	Password string `json:"password,omitempty"`
}

// Validate validates this Model user identity update request V3
func (m *ModelUserIdentityUpdateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserIdentityUpdateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserIdentityUpdateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserIdentityUpdateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
