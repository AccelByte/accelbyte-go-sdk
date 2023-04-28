// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// PassUpdate Pass update
//
// swagger:model Pass update.
type PassUpdate struct {

	// autoEnroll for free pass
	AutoEnroll bool `json:"autoEnroll"`

	// displayOrder for frontend to arrange the pass
	// Format: int32
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	Localizations map[string]Localization `json:"localizations,omitempty"`

	// pass item id
	PassItemID string `json:"passItemId,omitempty"`
}

// Validate validates this Pass update
func (m *PassUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PassUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PassUpdate) UnmarshalBinary(b []byte) error {
	var res PassUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
