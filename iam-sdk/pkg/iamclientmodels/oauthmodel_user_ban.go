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

// OauthmodelUserBan Oauthmodel user ban
//
// swagger:model Oauthmodel user ban.
type OauthmodelUserBan struct {

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// enddate
	// Required: true
	// Format: int64
	EndDate *int64 `json:"endDate"`

	// reason
	// Required: true
	Reason *string `json:"reason"`
}

// Validate validates this Oauthmodel user ban
func (m *OauthmodelUserBan) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelUserBan) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelUserBan) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", m.EndDate); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelUserBan) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelUserBan) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelUserBan) UnmarshalBinary(b []byte) error {
	var res OauthmodelUserBan
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
