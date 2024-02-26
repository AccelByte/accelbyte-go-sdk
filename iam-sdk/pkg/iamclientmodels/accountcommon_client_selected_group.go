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

// AccountcommonClientSelectedGroup Accountcommon client selected group
//
// swagger:model Accountcommon client selected group.
type AccountcommonClientSelectedGroup struct {

	// groupid
	// Required: true
	GroupID *string `json:"groupId"`

	// selectedactions
	// Required: true
	SelectedActions []int64 `json:"selectedActions"`
}

// Validate validates this Accountcommon client selected group
func (m *AccountcommonClientSelectedGroup) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateGroupID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSelectedActions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonClientSelectedGroup) validateGroupID(formats strfmt.Registry) error {

	if err := validate.Required("groupId", "body", m.GroupID); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonClientSelectedGroup) validateSelectedActions(formats strfmt.Registry) error {

	if err := validate.Required("selectedActions", "body", m.SelectedActions); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonClientSelectedGroup) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonClientSelectedGroup) UnmarshalBinary(b []byte) error {
	var res AccountcommonClientSelectedGroup
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
