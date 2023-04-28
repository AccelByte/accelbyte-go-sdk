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

// OauthcommonJWKSet Oauthcommon JWK set
//
// swagger:model Oauthcommon JWK set.
type OauthcommonJWKSet struct {

	// keys
	// Required: true
	Keys []*OauthcommonJWKKey `json:"keys"`
}

// Validate validates this Oauthcommon JWK set
func (m *OauthcommonJWKSet) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateKeys(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthcommonJWKSet) validateKeys(formats strfmt.Registry) error {

	if err := validate.Required("keys", "body", m.Keys); err != nil {
		return err
	}

	for i := 0; i < len(m.Keys); i++ {
		if swag.IsZero(m.Keys[i]) { // not required
			continue
		}

		if m.Keys[i] != nil {
			if err := m.Keys[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("keys" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthcommonJWKSet) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthcommonJWKSet) UnmarshalBinary(b []byte) error {
	var res OauthcommonJWKSet
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
