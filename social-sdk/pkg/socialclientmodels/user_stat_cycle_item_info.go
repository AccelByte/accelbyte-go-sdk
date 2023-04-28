// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package socialclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// UserStatCycleItemInfo User stat cycle item info
//
// swagger:model User stat cycle item info.
type UserStatCycleItemInfo struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// cycleid
	// Required: true
	CycleID *string `json:"cycleId"`

	// cyclename
	// Required: true
	CycleName *string `json:"cycleName"`

	// cycleversion
	// Required: true
	// Format: int32
	CycleVersion *int32 `json:"cycleVersion"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// statcode
	// Required: true
	StatCode *string `json:"statCode"`

	// statname
	// Required: true
	StatName *string `json:"statName"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// userid
	// Required: true
	UserID *string `json:"userId"`

	// value
	// Required: true
	// Format: double
	Value *float64 `json:"value"`
}

// Validate validates this User stat cycle item info
func (m *UserStatCycleItemInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCycleVersion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateValue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *UserStatCycleItemInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateCycleID(formats strfmt.Registry) error {

	if err := validate.Required("cycleId", "body", m.CycleID); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateCycleName(formats strfmt.Registry) error {

	if err := validate.Required("cycleName", "body", m.CycleName); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateCycleVersion(formats strfmt.Registry) error {

	if err := validate.Required("cycleVersion", "body", m.CycleVersion); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateStatCode(formats strfmt.Registry) error {

	if err := validate.Required("statCode", "body", m.StatCode); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateStatName(formats strfmt.Registry) error {

	if err := validate.Required("statName", "body", m.StatName); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *UserStatCycleItemInfo) validateValue(formats strfmt.Registry) error {

	if err := validate.Required("value", "body", m.Value); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserStatCycleItemInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserStatCycleItemInfo) UnmarshalBinary(b []byte) error {
	var res UserStatCycleItemInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
