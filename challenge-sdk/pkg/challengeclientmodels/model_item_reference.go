// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelItemReference Model item reference
//
// swagger:model Model item reference.
type ModelItemReference struct {

	// module
	// Required: true
	Module *string `json:"module"`

	// references
	// Required: true
	References []*ModelChallengeReference `json:"references"`
}

// Validate validates this Model item reference
func (m *ModelItemReference) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateModule(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReferences(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelItemReference) validateModule(formats strfmt.Registry) error {

	if err := validate.Required("module", "body", m.Module); err != nil {
		return err
	}

	return nil
}

func (m *ModelItemReference) validateReferences(formats strfmt.Registry) error {

	if err := validate.Required("references", "body", m.References); err != nil {
		return err
	}

	for i := 0; i < len(m.References); i++ {
		if swag.IsZero(m.References[i]) { // not required
			continue
		}

		if m.References[i] != nil {
			if err := m.References[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("references" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelItemReference) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelItemReference) UnmarshalBinary(b []byte) error {
	var res ModelItemReference
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
