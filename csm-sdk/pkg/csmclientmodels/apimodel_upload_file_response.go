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

// ApimodelUploadFileResponse Apimodel upload file response
//
// swagger:model Apimodel upload file response.
type ApimodelUploadFileResponse struct {

	// appui
	// Required: true
	AppUI *ApimodelAppUIResponse `json:"appUI"`
}

// Validate validates this Apimodel upload file response
func (m *ApimodelUploadFileResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppUI(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelUploadFileResponse) validateAppUI(formats strfmt.Registry) error {

	if err := validate.Required("appUI", "body", m.AppUI); err != nil {
		return err
	}

	if m.AppUI != nil {
		if err := m.AppUI.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("appUI")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelUploadFileResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelUploadFileResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelUploadFileResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
