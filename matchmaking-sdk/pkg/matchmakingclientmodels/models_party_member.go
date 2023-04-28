// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPartyMember Models party member
//
// swagger:model Models party member.
type ModelsPartyMember struct {

	// extra_attributes
	// Required: true
	ExtraAttributes interface{} `json:"extra_attributes"`

	// user_id
	// Required: true
	UserID string `json:"user_id"`
}

// Validate validates this Models party member
func (m *ModelsPartyMember) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPartyMember) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("user_id", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPartyMember) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPartyMember) UnmarshalBinary(b []byte) error {
	var res ModelsPartyMember
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
