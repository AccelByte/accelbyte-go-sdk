// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelTagCreateRequestV3 Model tag create request V3
//
// swagger:model Model tag create request V3.
type ModelTagCreateRequestV3 struct {

	// tagname
	// Required: true
	TagName *string `json:"tagName"`
}

// Validate validates this Model tag create request V3
func (m *ModelTagCreateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTagName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelTagCreateRequestV3) validateTagName(formats strfmt.Registry) error {

	if err := validate.Required("tagName", "body", m.TagName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelTagCreateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelTagCreateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelTagCreateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
