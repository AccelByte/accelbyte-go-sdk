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

// ModelsUpdateContentShareCodeRequest Models update content share code request
//
// swagger:model Models update content share code request.
type ModelsUpdateContentShareCodeRequest struct {

	// sharecode
	// Required: true
	ShareCode *string `json:"shareCode"`
}

// Validate validates this Models update content share code request
func (m *ModelsUpdateContentShareCodeRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateShareCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsUpdateContentShareCodeRequest) validateShareCode(formats strfmt.Registry) error {

	if err := validate.Required("shareCode", "body", m.ShareCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateContentShareCodeRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateContentShareCodeRequest) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateContentShareCodeRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
