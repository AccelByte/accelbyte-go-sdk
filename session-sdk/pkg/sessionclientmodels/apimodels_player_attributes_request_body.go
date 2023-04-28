// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsPlayerAttributesRequestBody Apimodels player attributes request body
//
// swagger:model Apimodels player attributes request body.
type ApimodelsPlayerAttributesRequestBody struct {

	// crossplayenabled
	// Required: true
	CrossplayEnabled *bool `json:"crossplayEnabled"`

	// currentplatform
	// Required: true
	CurrentPlatform *string `json:"currentPlatform"`

	// data
	// Required: true
	Data interface{} `json:"data"`

	// platforms
	// Required: true
	Platforms []*ModelsUserPlatformInfo `json:"platforms"`
}

// Validate validates this Apimodels player attributes request body
func (m *ApimodelsPlayerAttributesRequestBody) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCrossplayEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentPlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatforms(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPlayerAttributesRequestBody) validateCrossplayEnabled(formats strfmt.Registry) error {

	if err := validate.Required("crossplayEnabled", "body", m.CrossplayEnabled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPlayerAttributesRequestBody) validateCurrentPlatform(formats strfmt.Registry) error {

	if err := validate.Required("currentPlatform", "body", m.CurrentPlatform); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPlayerAttributesRequestBody) validatePlatforms(formats strfmt.Registry) error {

	if err := validate.Required("platforms", "body", m.Platforms); err != nil {
		return err
	}

	for i := 0; i < len(m.Platforms); i++ {
		if swag.IsZero(m.Platforms[i]) { // not required
			continue
		}

		if m.Platforms[i] != nil {
			if err := m.Platforms[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("platforms" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPlayerAttributesRequestBody) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPlayerAttributesRequestBody) UnmarshalBinary(b []byte) error {
	var res ApimodelsPlayerAttributesRequestBody
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
