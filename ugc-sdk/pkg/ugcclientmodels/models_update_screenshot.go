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

// ModelsUpdateScreenshot Models update screenshot
//
// swagger:model Models update screenshot.
type ModelsUpdateScreenshot struct {

	// description
	// Required: true
	Description *string `json:"description"`

	// screenshotid
	// Required: true
	ScreenshotID *string `json:"screenshotId"`
}

// Validate validates this Models update screenshot
func (m *ModelsUpdateScreenshot) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScreenshotID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateScreenshot) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ModelsUpdateScreenshot) validateScreenshotID(formats strfmt.Registry) error {

	if err := validate.Required("screenshotId", "body", m.ScreenshotID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateScreenshot) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateScreenshot) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateScreenshot
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
