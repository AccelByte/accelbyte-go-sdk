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

// ModelUserUnbanCreateRequestV3 Model user unban create request V3
//
// swagger:model Model user unban create request V3.
type ModelUserUnbanCreateRequestV3 struct {

	// banid
	// Required: true
	BanID *string `json:"banId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Model user unban create request V3
func (m *ModelUserUnbanCreateRequestV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBanID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserUnbanCreateRequestV3) validateBanID(formats strfmt.Registry) error {

	if err := validate.Required("banId", "body", m.BanID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserUnbanCreateRequestV3) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserUnbanCreateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserUnbanCreateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelUserUnbanCreateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
