// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsTeam Models team
//
// swagger:model Models team.
type ModelsTeam struct {

	// userids
	// Required: true
	UserIDs []string `json:"UserIDs"`

	// parties
	Parties []*ModelsPartyMembers `json:"parties,omitempty"`
}

// Validate validates this Models team
func (m *ModelsTeam) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsTeam) validateUserIDs(formats strfmt.Registry) error {

	if err := validate.Required("UserIDs", "body", m.UserIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTeam) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTeam) UnmarshalBinary(b []byte) error {
	var res ModelsTeam
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
