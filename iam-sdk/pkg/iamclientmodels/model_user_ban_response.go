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

// ModelUserBanResponse Model user ban response
//
// swagger:model Model user ban response.
type ModelUserBanResponse struct {

	// ban
	// Required: true
	Ban *string `json:"Ban"`

	// banid
	// Required: true
	BanID *string `json:"BanId"`

	// bannedby
	// Required: true
	BannedBy *BannedBy `json:"BannedBy"`

	// comment
	// Required: true
	Comment *string `json:"Comment"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"CreatedAt"`

	// disableddate
	// Format: date-time
	DisabledDate *strfmt.DateTime `json:"DisabledDate,omitempty"`

	// enabled
	// Required: true
	Enabled *bool `json:"Enabled"`

	// enddate
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"EndDate"`

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// reason
	// Required: true
	Reason *string `json:"Reason"`

	// userid
	// Required: true
	UserID *string `json:"UserId"`
}

// Validate validates this Model user ban response
func (m *ModelUserBanResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBanID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBannedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserBanResponse) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("Ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateBanID(formats strfmt.Registry) error {

	if err := validate.Required("BanId", "body", m.BanID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateBannedBy(formats strfmt.Registry) error {

	if err := validate.Required("BannedBy", "body", m.BannedBy); err != nil {
		return err
	}

	if m.BannedBy != nil {
		if err := m.BannedBy.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("BannedBy")
			}
			return err
		}
	}

	return nil
}

func (m *ModelUserBanResponse) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("Comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("CreatedAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("CreatedAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("Enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("EndDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("EndDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("Reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserBanResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserBanResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserBanResponse) UnmarshalBinary(b []byte) error {
	var res ModelUserBanResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
