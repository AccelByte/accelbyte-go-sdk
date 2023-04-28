// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ADTOObjectForResettingUserStatItems A DTO object for resetting user stat items
//
// swagger:model A DTO object for resetting user stat items.
type ADTOObjectForResettingUserStatItems struct {

	// additional data to be published in event payload
	AdditionalData interface{} `json:"additionalData,omitempty"`

	// stat code
	// Required: true
	StatCode *string `json:"statCode"`
}

// Validate validates this A DTO object for resetting user stat items
func (m *ADTOObjectForResettingUserStatItems) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ADTOObjectForResettingUserStatItems) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ADTOObjectForResettingUserStatItems) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ADTOObjectForResettingUserStatItems) UnmarshalBinary(b []byte) error {
	var res ADTOObjectForResettingUserStatItems
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
