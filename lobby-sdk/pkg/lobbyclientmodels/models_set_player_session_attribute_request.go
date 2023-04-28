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

// ModelsSetPlayerSessionAttributeRequest Models set player session attribute request
//
// swagger:model Models set player session attribute request.
type ModelsSetPlayerSessionAttributeRequest struct {

	// attributes
	// Required: true
	Attributes map[string]string `json:"attributes"`
}

// Validate validates this Models set player session attribute request
func (m *ModelsSetPlayerSessionAttributeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsSetPlayerSessionAttributeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsSetPlayerSessionAttributeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsSetPlayerSessionAttributeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
