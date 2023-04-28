// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ADTOForUpdateEQU8ConfigAPICall A DTO for update equ8 config API call
//
// swagger:model A DTO for update equ8 config API call.
type ADTOForUpdateEQU8ConfigAPICall struct {

	// apikey
	APIKey string `json:"apiKey,omitempty"`
}

// Validate validates this A DTO for update equ8 config API call
func (m *ADTOForUpdateEQU8ConfigAPICall) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ADTOForUpdateEQU8ConfigAPICall) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOForUpdateEQU8ConfigAPICall) UnmarshalBinary(b []byte) error {
	var res ADTOForUpdateEQU8ConfigAPICall
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
