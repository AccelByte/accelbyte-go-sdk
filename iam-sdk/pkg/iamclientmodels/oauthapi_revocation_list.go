// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// OauthapiRevocationList Oauthapi revocation list
//
// swagger:model Oauthapi revocation list.
type OauthapiRevocationList struct {

	// revoked_tokens
	// Required: true
	RevokedTokens *BloomFilterJSON `json:"revoked_tokens"`

	// revoked_users
	// Required: true
	RevokedUsers []*OauthcommonUserRevocationListRecord `json:"revoked_users"`
}

// Validate validates this Oauthapi revocation list
func (m *OauthapiRevocationList) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRevokedTokens(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRevokedUsers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthapiRevocationList) validateRevokedTokens(formats strfmt.Registry) error {

	if err := validate.Required("revoked_tokens", "body", m.RevokedTokens); err != nil {
		return err
	}

	if m.RevokedTokens != nil {
		if err := m.RevokedTokens.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("revoked_tokens")
			}
			return err
		}
	}

	return nil
}

func (m *OauthapiRevocationList) validateRevokedUsers(formats strfmt.Registry) error {

	if err := validate.Required("revoked_users", "body", m.RevokedUsers); err != nil {
		return err
	}

	for i := 0; i < len(m.RevokedUsers); i++ {
		if swag.IsZero(m.RevokedUsers[i]) { // not required
			continue
		}

		if m.RevokedUsers[i] != nil {
			if err := m.RevokedUsers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("revoked_users" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthapiRevocationList) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthapiRevocationList) UnmarshalBinary(b []byte) error {
	var res OauthapiRevocationList
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
