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

// Localization Localization
//
// swagger:model Localization.
type Localization struct {

	// description info
	Description string `json:"description,omitempty"`

	// localext
	LocalExt interface{} `json:"localExt,omitempty"`

	// long description info
	LongDescription string `json:"longDescription,omitempty"`

	// title info
	// Required: true
	Title *string `json:"title"`
}

// Validate validates this Localization
func (m *Localization) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTitle(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *Localization) validateTitle(formats strfmt.Registry) error {

	if err := validate.Required("title", "body", m.Title); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Localization) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Localization) UnmarshalBinary(b []byte) error {
	var res Localization
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
