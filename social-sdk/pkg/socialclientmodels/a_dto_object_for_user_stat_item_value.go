// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ADTOObjectForUserStatItemValue A DTO object for user stat item value
//
// swagger:model A DTO object for user stat item value.
type ADTOObjectForUserStatItemValue struct {

	// profile id
	ProfileID string `json:"profileId,omitempty"`

	// stat code
	StatCode string `json:"statCode,omitempty"`

	// current value
	// Format: double
	Value float64 `json:"value,omitempty"`
}

// Validate validates this A DTO object for user stat item value
func (m *ADTOObjectForUserStatItemValue) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ADTOObjectForUserStatItemValue) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOObjectForUserStatItemValue) UnmarshalBinary(b []byte) error {
	var res ADTOObjectForUserStatItemValue
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
