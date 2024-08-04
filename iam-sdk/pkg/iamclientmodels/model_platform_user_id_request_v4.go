// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelPlatformUserIDRequestV4 Model platform user ID request V4
//
// swagger:model Model platform user ID request V4.
type ModelPlatformUserIDRequestV4 struct {

	// max length is 100, min length is 1
	// Required: true
	PlatformUserIds []string `json:"platformUserIds"`
}

// Validate validates this Model platform user ID request V4
func (m *ModelPlatformUserIDRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlatformUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelPlatformUserIDRequestV4) validatePlatformUserIds(formats strfmt.Registry) error {

	if err := validate.Required("platformUserIds", "body", m.PlatformUserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelPlatformUserIDRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelPlatformUserIDRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelPlatformUserIDRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
