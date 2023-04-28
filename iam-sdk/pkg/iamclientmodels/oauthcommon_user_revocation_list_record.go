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

// OauthcommonUserRevocationListRecord Oauthcommon user revocation list record
//
// swagger:model Oauthcommon user revocation list record.
type OauthcommonUserRevocationListRecord struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// revoked_at
	// Required: true
	// Format: date-time
	RevokedAt strfmt.DateTime `json:"revoked_at"`
}

// Validate validates this Oauthcommon user revocation list record
func (m *OauthcommonUserRevocationListRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRevokedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthcommonUserRevocationListRecord) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *OauthcommonUserRevocationListRecord) validateRevokedAt(formats strfmt.Registry) error {

	if err := validate.Required("revoked_at", "body", strfmt.DateTime(m.RevokedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("revoked_at", "body", "date-time", m.RevokedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthcommonUserRevocationListRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthcommonUserRevocationListRecord) UnmarshalBinary(b []byte) error {
	var res OauthcommonUserRevocationListRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
