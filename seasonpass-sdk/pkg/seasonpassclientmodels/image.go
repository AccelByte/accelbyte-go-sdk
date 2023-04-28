// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// Image Image
//
// swagger:model Image.
type Image struct {

	// image for
	As string `json:"as,omitempty"`

	// image caption
	Caption string `json:"caption,omitempty"`

	// height
	// Required: true
	// Format: int32
	Height *int32 `json:"height"`

	// imageUrl
	// Required: true
	ImageURL *string `json:"imageUrl"`

	// smallImageUrl
	SmallImageURL string `json:"smallImageUrl,omitempty"`

	// width
	// Required: true
	// Format: int32
	Width *int32 `json:"width"`
}

// Validate validates this Image
func (m *Image) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateHeight(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateImageURL(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateWidth(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *Image) validateHeight(formats strfmt.Registry) error {

	if err := validate.Required("height", "body", m.Height); err != nil {
		return err
	}

	return nil
}

func (m *Image) validateImageURL(formats strfmt.Registry) error {

	if err := validate.Required("imageUrl", "body", m.ImageURL); err != nil {
		return err
	}

	return nil
}

func (m *Image) validateWidth(formats strfmt.Registry) error {

	if err := validate.Required("width", "body", m.Width); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *Image) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Image) UnmarshalBinary(b []byte) error {
	var res Image
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
