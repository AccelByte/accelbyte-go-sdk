// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUserDataURL Models user data URL
//
// swagger:model Models user data URL.
type ModelsUserDataURL struct {

	// url
	// Required: true
	URL *string `json:"URL"`
}

// Validate validates this Models user data URL
func (m *ModelsUserDataURL) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUserDataURL) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("URL", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUserDataURL) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUserDataURL) UnmarshalBinary(b []byte) error {
	var res ModelsUserDataURL
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
