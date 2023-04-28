// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsUpdateScreenshotRequest Models update screenshot request
//
// swagger:model Models update screenshot request.
type ModelsUpdateScreenshotRequest struct {

	// screenshots
	// Required: true
	Screenshots []*ModelsUpdateScreenshot `json:"screenshots"`
}

// Validate validates this Models update screenshot request
func (m *ModelsUpdateScreenshotRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateScreenshots(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateScreenshotRequest) validateScreenshots(formats strfmt.Registry) error {

	if err := validate.Required("screenshots", "body", m.Screenshots); err != nil {
		return err
	}

	for i := 0; i < len(m.Screenshots); i++ {
		if swag.IsZero(m.Screenshots[i]) { // not required
			continue
		}

		if m.Screenshots[i] != nil {
			if err := m.Screenshots[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("screenshots" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateScreenshotRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateScreenshotRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateScreenshotRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
