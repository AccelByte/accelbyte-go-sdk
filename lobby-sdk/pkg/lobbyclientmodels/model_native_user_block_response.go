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

// ModelNativeUserBlockResponse Model native user block response
//
// swagger:model Model native user block response.
type ModelNativeUserBlockResponse struct {

	// detail
	Detail string `json:"detail,omitempty"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Model native user block response
func (m *ModelNativeUserBlockResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNativeUserBlockResponse) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNativeUserBlockResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNativeUserBlockResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNativeUserBlockResponse) UnmarshalBinary(b []byte) error {
	var res ModelNativeUserBlockResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
