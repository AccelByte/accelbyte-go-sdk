// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CodeCreate Code create
//
// swagger:model Code create.
type CodeCreate struct {

	// batch name, can contain special character, should not start or end with whitespaces, min. 3, max. 60 characters
	BatchName string `json:"batchName,omitempty"`

	// custom code value, allowed characters alpha numeric with length range from 6 to 20, only generate one custom code value if this codeValue is not null
	CodeValue string `json:"codeValue,omitempty"`

	// The quantity of codes to generate when not set custom code value.
	// Format: int32
	Quantity int32 `json:"quantity,omitempty"`
}

// Validate validates this Code create
func (m *CodeCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *CodeCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *CodeCreate) UnmarshalBinary(b []byte) error {
	var res CodeCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
