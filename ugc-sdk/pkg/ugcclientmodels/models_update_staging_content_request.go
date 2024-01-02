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

// ModelsUpdateStagingContentRequest Models update staging content request
//
// swagger:model Models update staging content request.
type ModelsUpdateStagingContentRequest struct {

	// fileextension
	FileExtension string `json:"fileExtension,omitempty"`

	// filelocation
	// Required: true
	FileLocation *string `json:"fileLocation"`
}

// Validate validates this Models update staging content request
func (m *ModelsUpdateStagingContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFileLocation(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateStagingContentRequest) validateFileLocation(formats strfmt.Registry) error {

	if err := validate.Required("fileLocation", "body", m.FileLocation); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateStagingContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateStagingContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateStagingContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
