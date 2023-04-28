// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// UserPassGrant User pass grant
//
// swagger:model User pass grant.
type UserPassGrant struct {

	// pass code, required if passItemId null
	PassCode string `json:"passCode,omitempty"`

	// pass item id, required if passCode null and ignored if passCode present
	PassItemID string `json:"passItemId,omitempty"`
}

// Validate validates this User pass grant
func (m *UserPassGrant) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *UserPassGrant) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserPassGrant) UnmarshalBinary(b []byte) error {
	var res UserPassGrant
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
