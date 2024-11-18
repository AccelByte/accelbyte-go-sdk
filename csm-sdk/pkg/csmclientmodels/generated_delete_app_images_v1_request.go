// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GeneratedDeleteAppImagesV1Request Generated delete app images V1 request
//
// swagger:model Generated delete app images V1 request.
type GeneratedDeleteAppImagesV1Request struct {

	// imagetags
	// Required: true
	ImageTags []string `json:"imageTags"`
}

// Validate validates this Generated delete app images V1 request
func (m *GeneratedDeleteAppImagesV1Request) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateImageTags(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedDeleteAppImagesV1Request) validateImageTags(formats strfmt.Registry) error {

	if err := validate.Required("imageTags", "body", m.ImageTags); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedDeleteAppImagesV1Request) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedDeleteAppImagesV1Request) UnmarshalBinary(b []byte) error {
	var res GeneratedDeleteAppImagesV1Request
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
