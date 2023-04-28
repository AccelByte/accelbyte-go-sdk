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

// ModelsGetContentPreviewResponse Models get content preview response
//
// swagger:model Models get content preview response.
type ModelsGetContentPreviewResponse struct {

	// Preview is legacy code, please use Screenshot instead
	// Required: true
	Preview *string `json:"preview"`

	// previewurl
	PreviewURL *ModelsPreviewURL `json:"previewURL,omitempty"`
}

// Validate validates this Models get content preview response
func (m *ModelsGetContentPreviewResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePreview(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetContentPreviewResponse) validatePreview(formats strfmt.Registry) error {

	if err := validate.Required("preview", "body", m.Preview); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetContentPreviewResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetContentPreviewResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetContentPreviewResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
