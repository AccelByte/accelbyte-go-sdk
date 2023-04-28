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

// Requirement Requirement
//
// swagger:model Requirement.
type Requirement struct {

	// other requirement, max length is 255
	Additionals string `json:"additionals,omitempty"`

	// directX version, max length is 255
	DirectXVersion string `json:"directXVersion,omitempty"`

	// disk space, max length is 255
	DiskSpace string `json:"diskSpace,omitempty"`

	// graphics, max length is 255
	Graphics string `json:"graphics,omitempty"`

	// label, value can be:minimum,recommended
	// Required: true
	Label *string `json:"label"`

	// OS version, max length is 255
	OsVersion string `json:"osVersion,omitempty"`

	// processor, max length is 255
	Processor string `json:"processor,omitempty"`

	// RAM, max length is 255
	RAM string `json:"ram,omitempty"`

	// sound card, max length is 255
	SoundCard string `json:"soundCard,omitempty"`
}

// Validate validates this Requirement
func (m *Requirement) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLabel(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *Requirement) validateLabel(formats strfmt.Registry) error {

	if err := validate.Required("label", "body", m.Label); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Requirement) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Requirement) UnmarshalBinary(b []byte) error {
	var res Requirement
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
