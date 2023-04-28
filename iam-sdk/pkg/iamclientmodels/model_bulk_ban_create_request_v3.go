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

// ModelBulkBanCreateRequestV3 Model bulk ban create request V3
//
// swagger:model Model bulk ban create request V3.
type ModelBulkBanCreateRequestV3 struct {

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

	// userids
	// Required: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Model bulk ban create request V3
func (m *ModelBulkBanCreateRequestV3) Validate(formats strfmt.Registry) error {
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
	if err := m.validateUserIds(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", m.EndDate); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateSkipNotif(formats strfmt.Registry) error {

	if err := validate.Required("skipNotif", "body", m.SkipNotif); err != nil {
		return err
	}

	return nil
}

func (m *ModelBulkBanCreateRequestV3) validateUserIds(formats strfmt.Registry) error {

	if err := validate.Required("userIds", "body", m.UserIds); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelBulkBanCreateRequestV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelBulkBanCreateRequestV3) UnmarshalBinary(b []byte) error {
	var res ModelBulkBanCreateRequestV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
