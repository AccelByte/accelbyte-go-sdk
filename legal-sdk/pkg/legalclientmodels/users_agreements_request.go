// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UsersAgreementsRequest Users agreements request
//
// swagger:model Users agreements request.
type UsersAgreementsRequest struct {

	// if true, the result will only include the status of current published policies, default: false
	CurrentPublishedOnly bool `json:"currentPublishedOnly"`

	// user ids, min size: 1, max size: 100
	// Unique: true
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Users agreements request
func (m *UsersAgreementsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UsersAgreementsRequest) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}
	if err := validate.UniqueItems("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UsersAgreementsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UsersAgreementsRequest) UnmarshalBinary(b []byte) error {
	var res UsersAgreementsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
