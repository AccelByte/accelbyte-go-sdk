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

// SlotMetadataUpdate Slot metadata update
//
// swagger:model Slot metadata update.
type SlotMetadataUpdate struct {

	// customattribute
	CustomAttribute string `json:"customAttribute,omitempty"`

	// label
	Label string `json:"label,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`
}

// Validate validates this Slot metadata update
func (m *SlotMetadataUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *SlotMetadataUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SlotMetadataUpdate) UnmarshalBinary(b []byte) error {
	var res SlotMetadataUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
