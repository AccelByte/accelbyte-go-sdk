// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsGetAllPlayerSessionAttributeResponse Models get all player session attribute response
//
// swagger:model Models get all player session attribute response.
type ModelsGetAllPlayerSessionAttributeResponse struct {

	// attributes
	// Required: true
	Attributes map[string]string `json:"attributes"`
}

// Validate validates this Models get all player session attribute response
func (m *ModelsGetAllPlayerSessionAttributeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetAllPlayerSessionAttributeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetAllPlayerSessionAttributeResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetAllPlayerSessionAttributeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
