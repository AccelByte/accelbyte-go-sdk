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

// ModelBanCreateRequest Model ban create request
//
// swagger:model Model ban create request.
type ModelBanCreateRequest struct {

	// ban
	// Required: true
	Ban *string `json:"ban"`

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// enddate
	// Required: true
	EndDate *string `json:"endDate"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// skipnotif
	// Required: true
	SkipNotif *bool `json:"skipNotif"`
}

// Validate validates this Model ban create request
func (m *ModelBanCreateRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSkipNotif(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBanCreateRequest) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *ModelBanCreateRequest) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelBanCreateRequest) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", m.EndDate); err != nil {
		return err
	}

	return nil
}

func (m *ModelBanCreateRequest) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ModelBanCreateRequest) validateSkipNotif(formats strfmt.Registry) error {

	if err := validate.Required("skipNotif", "body", m.SkipNotif); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBanCreateRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBanCreateRequest) UnmarshalBinary(b []byte) error {
	var res ModelBanCreateRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
