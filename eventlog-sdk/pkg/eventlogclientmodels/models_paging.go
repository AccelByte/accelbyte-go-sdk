// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsPaging Models paging
//
// swagger:model Models paging.
type ModelsPaging struct {

	// first
	First string `json:"first,omitempty"`

	// last
	Last string `json:"last,omitempty"`

	// next
	Next string `json:"next,omitempty"`

	// previous
	Previous string `json:"previous,omitempty"`
}

// Validate validates this Models paging
func (m *ModelsPaging) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPaging) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPaging) UnmarshalBinary(b []byte) error {
	var res ModelsPaging
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
