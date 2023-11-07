// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsContentRequestV2 Models content request V2
//
// swagger:model Models content request V2.
type ModelsContentRequestV2 struct {

	// S3 content type
	ContentType string `json:"contentType,omitempty"`

	// customattributes
	CustomAttributes interface{} `json:"customAttributes,omitempty"`

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// name
	// Required: true
	Name *string `json:"name"`

	// subtype
	SubType string `json:"subType,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// type
	Type string `json:"type,omitempty"`
}

// Validate validates this Models content request V2
func (m *ModelsContentRequestV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsContentRequestV2) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentRequestV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentRequestV2) UnmarshalBinary(b []byte) error {
	var res ModelsContentRequestV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
