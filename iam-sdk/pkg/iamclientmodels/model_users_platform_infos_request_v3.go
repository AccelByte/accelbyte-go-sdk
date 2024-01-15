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

// ModelUsersPlatformInfosRequestV3 Model users platform infos request V3
//
// swagger:model Model users platform infos request V3.
type ModelUsersPlatformInfosRequestV3 struct {

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// max count 100
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model users platform infos request V3
func (m *ModelUsersPlatformInfosRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUsersPlatformInfosRequestV3) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUsersPlatformInfosRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUsersPlatformInfosRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUsersPlatformInfosRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
