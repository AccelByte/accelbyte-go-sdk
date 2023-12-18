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

// ModelBulkAccountTypeUpdateRequestV4 Model bulk account type update request V4
//
// swagger:model Model bulk account type update request V4.
type ModelBulkAccountTypeUpdateRequestV4 struct {

	// testaccount
	// Required: true
	TestAccount *bool `json:"testAccount"`

	// max userId is 100
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model bulk account type update request V4
func (m *ModelBulkAccountTypeUpdateRequestV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTestAccount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBulkAccountTypeUpdateRequestV4) validateTestAccount(formats strfmt.Registry) error {

	if err := validate.Required("testAccount", "body", m.TestAccount); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkAccountTypeUpdateRequestV4) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkAccountTypeUpdateRequestV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkAccountTypeUpdateRequestV4) UnmarshalBinary(b []byte) error {
	var res ModelBulkAccountTypeUpdateRequestV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
