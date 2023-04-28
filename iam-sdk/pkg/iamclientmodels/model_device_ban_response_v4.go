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

// ModelDeviceBanResponseV4 Model device ban response V4
//
// swagger:model Model device ban response V4.
type ModelDeviceBanResponseV4 struct {

	// bannedat
	// Required: true
	// Format: int64
	BannedAt *int64 `json:"bannedAt"`

	// bannedby
	// Required: true
	BannedBy *string `json:"bannedBy"`

	// comment
	// Required: true
	Comment *string `json:"comment"`

	// deviceid
	// Required: true
	DeviceID *string `json:"deviceId"`

	// devicetype
	// Required: true
	DeviceType *string `json:"deviceType"`

	// disabledat
	// Required: true
	// Format: int64
	DisabledAt *int64 `json:"disabledAt"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// enddate
	// Required: true
	// Format: int64
	EndDate *int64 `json:"endDate"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// targetnamespace
	// Required: true
	TargetNamespace *string `json:"targetNamespace"`
}

// Validate validates this Model device ban response V4
func (m *ModelDeviceBanResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBannedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBannedBy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateComment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeviceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeviceType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDisabledAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelDeviceBanResponseV4) validateBannedAt(formats strfmt.Registry) error {

	if err := validate.Required("bannedAt", "body", m.BannedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateBannedBy(formats strfmt.Registry) error {

	if err := validate.Required("bannedBy", "body", m.BannedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateComment(formats strfmt.Registry) error {

	if err := validate.Required("comment", "body", m.Comment); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateDeviceID(formats strfmt.Registry) error {

	if err := validate.Required("deviceId", "body", m.DeviceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateDeviceType(formats strfmt.Registry) error {

	if err := validate.Required("deviceType", "body", m.DeviceType); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateDisabledAt(formats strfmt.Registry) error {

	if err := validate.Required("disabledAt", "body", m.DisabledAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", m.EndDate); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ModelDeviceBanResponseV4) validateTargetNamespace(formats strfmt.Registry) error {

	if err := validate.Required("targetNamespace", "body", m.TargetNamespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelDeviceBanResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelDeviceBanResponseV4) UnmarshalBinary(b []byte) error {
	var res ModelDeviceBanResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
