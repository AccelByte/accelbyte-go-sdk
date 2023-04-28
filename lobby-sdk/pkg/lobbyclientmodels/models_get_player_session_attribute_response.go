// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetPlayerSessionAttributeResponse Models get player session attribute response
//
// swagger:model Models get player session attribute response.
type ModelsGetPlayerSessionAttributeResponse struct {

	// key
	// Required: true
	Key *string `json:"key"`

	// value
	// Required: true
	Value *string `json:"value"`
}

// Validate validates this Models get player session attribute response
func (m *ModelsGetPlayerSessionAttributeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKey(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetPlayerSessionAttributeResponse) validateKey(formats strfmt.Registry) error {

	if err := validate.Required("key", "body", m.Key); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetPlayerSessionAttributeResponse) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetPlayerSessionAttributeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetPlayerSessionAttributeResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetPlayerSessionAttributeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
