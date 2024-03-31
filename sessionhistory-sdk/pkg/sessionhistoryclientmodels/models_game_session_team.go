// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsGameSessionTeam Models game session team
//
// swagger:model Models game session team.
type ModelsGameSessionTeam struct {

	// parties
	Parties []*ModelsPartyMembers `json:"parties,omitempty"`

	// userids
	UserIDs []string `json:"userIDs,omitempty"`
}

// Validate validates this Models game session team
func (m *ModelsGameSessionTeam) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameSessionTeam) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameSessionTeam) UnmarshalBinary(b []byte) error {
	var res ModelsGameSessionTeam
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
