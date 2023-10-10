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

// ImportStoreSectionInfo Import store section info
//
// swagger:model Import store section info.
type ImportStoreSectionInfo struct {

	// Name
	Name string `json:"name,omitempty"`

	// section id
	SectionID string `json:"sectionId,omitempty"`
}

// Validate validates this Import store section info
func (m *ImportStoreSectionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ImportStoreSectionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ImportStoreSectionInfo) UnmarshalBinary(b []byte) error {
	var res ImportStoreSectionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
