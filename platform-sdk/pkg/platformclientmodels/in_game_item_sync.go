// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// InGameItemSync In game item sync
//
// swagger:model In game item sync.
type InGameItemSync struct {

	// the new category path for the synced item, A path separated by "/", will not show in store if it set to blank
	// Required: true
	CategoryPath *string `json:"categoryPath"`

	// [Going to deprecate] Item id in game namespace
	// Required: true
	TargetItemID *string `json:"targetItemId"`

	// game namespace
	// Required: true
	TargetNamespace *string `json:"targetNamespace"`
}

// Validate validates this In game item sync
func (m *InGameItemSync) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCategoryPath(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *InGameItemSync) validateCategoryPath(formats strfmt.Registry) error {

	if err := validate.Required("categoryPath", "body", m.CategoryPath); err != nil {
		return err
	}

	return nil
}

func (m *InGameItemSync) validateTargetItemID(formats strfmt.Registry) error {

	if err := validate.Required("targetItemId", "body", m.TargetItemID); err != nil {
		return err
	}

	return nil
}

func (m *InGameItemSync) validateTargetNamespace(formats strfmt.Registry) error {

	if err := validate.Required("targetNamespace", "body", m.TargetNamespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *InGameItemSync) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *InGameItemSync) UnmarshalBinary(b []byte) error {
	var res InGameItemSync
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
