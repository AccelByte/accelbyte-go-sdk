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

// ModelsAddDownloadCountResponse Models add download count response
//
// swagger:model Models add download count response.
type ModelsAddDownloadCountResponse struct {

	// contentid
	// Required: true
	ContentID *string `json:"contentId"`
}

// Validate validates this Models add download count response
func (m *ModelsAddDownloadCountResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAddDownloadCountResponse) validateContentID(formats strfmt.Registry) error {

	if err := validate.Required("contentId", "body", m.ContentID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAddDownloadCountResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAddDownloadCountResponse) UnmarshalBinary(b []byte) error {
	var res ModelsAddDownloadCountResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
