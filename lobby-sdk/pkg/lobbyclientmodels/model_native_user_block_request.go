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

// ModelNativeUserBlockRequest Model native user block request
//
// swagger:model Model native user block request.
type ModelNativeUserBlockRequest struct {

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// psnenv
	PsnEnv string `json:"psnEnv,omitempty"`
}

// Validate validates this Model native user block request
func (m *ModelNativeUserBlockRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNativeUserBlockRequest) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNativeUserBlockRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNativeUserBlockRequest) UnmarshalBinary(b []byte) error {
	var res ModelNativeUserBlockRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
