// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelUpdateTemplateRequest Model update template request
//
// swagger:model Model update template request.
type ModelUpdateTemplateRequest struct {

	// templatecontent
	// Required: true
	TemplateContent *string `json:"templateContent"`
}

// Validate validates this Model update template request
func (m *ModelUpdateTemplateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTemplateContent(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUpdateTemplateRequest) validateTemplateContent(formats strfmt.Registry) error {

	if err := validate.Required("templateContent", "body", m.TemplateContent); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUpdateTemplateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUpdateTemplateRequest) UnmarshalBinary(b []byte) error {
	var res ModelUpdateTemplateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
