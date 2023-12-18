// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIArtifactURLResponse Api artifact URL response
//
// swagger:model Api artifact URL response.
type APIArtifactURLResponse struct {

	// url
	// Required: true
	URL *string `json:"url"`
}

// Validate validates this Api artifact URL response
func (m *APIArtifactURLResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIArtifactURLResponse) validateURL(formats strfmt.Registry) error {

	if err := validate.Required("url", "body", m.URL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIArtifactURLResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIArtifactURLResponse) UnmarshalBinary(b []byte) error {
	var res APIArtifactURLResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
