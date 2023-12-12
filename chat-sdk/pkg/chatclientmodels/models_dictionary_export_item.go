// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDictionaryExportItem Models dictionary export item
//
// swagger:model Models dictionary export item.
type ModelsDictionaryExportItem struct {

	// falsenegative
	FalseNegative []string `json:"falseNegative,omitempty"`

	// falsepositive
	FalsePositive []string `json:"falsePositive,omitempty"`

	// word
	// Required: true
	Word *string `json:"word"`
}

// Validate validates this Models dictionary export item
func (m *ModelsDictionaryExportItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateWord(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryExportItem) validateWord(formats strfmt.Registry) error {

	if err := validate.Required("word", "body", m.Word); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryExportItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryExportItem) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryExportItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
