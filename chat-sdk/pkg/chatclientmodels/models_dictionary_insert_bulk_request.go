// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDictionaryInsertBulkRequest Models dictionary insert bulk request
//
// swagger:model Models dictionary insert bulk request.
type ModelsDictionaryInsertBulkRequest struct {

	// dictionaries
	// Required: true
	Dictionaries []*ModelsDictionaryInsertRequest `json:"dictionaries"`
}

// Validate validates this Models dictionary insert bulk request
func (m *ModelsDictionaryInsertBulkRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDictionaries(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDictionaryInsertBulkRequest) validateDictionaries(formats strfmt.Registry) error {

	if err := validate.Required("dictionaries", "body", m.Dictionaries); err != nil {
		return err
	}

	for i := 0; i < len(m.Dictionaries); i++ {
		if swag.IsZero(m.Dictionaries[i]) { // not required
			continue
		}

		if m.Dictionaries[i] != nil {
			if err := m.Dictionaries[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("dictionaries" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDictionaryInsertBulkRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDictionaryInsertBulkRequest) UnmarshalBinary(b []byte) error {
	var res ModelsDictionaryInsertBulkRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
