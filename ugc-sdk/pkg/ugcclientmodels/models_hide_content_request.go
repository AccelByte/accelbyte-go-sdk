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

// ModelsHideContentRequest Models hide content request
//
// swagger:model Models hide content request.
type ModelsHideContentRequest struct {

	// ishidden
	// Required: true
	IsHidden *bool `json:"isHidden"`
}

// Validate validates this Models hide content request
func (m *ModelsHideContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsHidden(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsHideContentRequest) validateIsHidden(formats strfmt.Registry) error {

	if err := validate.Required("isHidden", "body", m.IsHidden); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsHideContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsHideContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsHideContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
