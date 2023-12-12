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

// ModelsDictionaryImportResult Models dictionary import result
//
// swagger:model Models dictionary import result.
type ModelsDictionaryImportResult struct {

	// words
	// Required: true
	Words *ModelsDictionaryWordChanges `json:"words"`
}

// Validate validates this Models dictionary import result
func (m *ModelsDictionaryImportResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateWords(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryImportResult) validateWords(formats strfmt.Registry) error {

	if err := validate.Required("words", "body", m.Words); err != nil {
		return err
	}

	if m.Words != nil {
		if err := m.Words.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("words")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryImportResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryImportResult) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryImportResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
