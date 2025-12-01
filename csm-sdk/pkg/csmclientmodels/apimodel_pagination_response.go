// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelPaginationResponse Apimodel pagination response
//
// swagger:model Apimodel pagination response.
type ApimodelPaginationResponse struct {

	// first
	First string `json:"first,omitempty"`

	// last
	Last string `json:"last,omitempty"`

	// next
	Next string `json:"next,omitempty"`

	// previous
	Previous string `json:"previous,omitempty"`

	// totaldata
	// Required: true
	// Format: int64
	TotalData *int64 `json:"totalData"`
}

// Validate validates this Apimodel pagination response
func (m *ApimodelPaginationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTotalData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelPaginationResponse) validateTotalData(formats strfmt.Registry) error {

	if err := validate.Required("totalData", "body", m.TotalData); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelPaginationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelPaginationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelPaginationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
