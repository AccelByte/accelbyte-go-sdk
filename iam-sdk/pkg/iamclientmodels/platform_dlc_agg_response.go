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

// PlatformDLCAggResponse Platform DLC agg response
//
// swagger:model Platform DLC agg response.
type PlatformDLCAggResponse struct {

	// totalcount
	// Required: true
	// Format: int32
	TotalCount *int32 `json:"totalCount"`
}

// Validate validates this Platform DLC agg response
func (m *PlatformDLCAggResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTotalCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PlatformDLCAggResponse) validateTotalCount(formats strfmt.Registry) error {

	if err := validate.Required("totalCount", "body", m.TotalCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PlatformDLCAggResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlatformDLCAggResponse) UnmarshalBinary(b []byte) error {
	var res PlatformDLCAggResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
