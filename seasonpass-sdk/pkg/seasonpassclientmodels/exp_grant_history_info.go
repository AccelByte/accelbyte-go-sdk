// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ExpGrantHistoryInfo Exp grant history info
//
// swagger:model Exp grant history info.
type ExpGrantHistoryInfo struct {

	// acquired at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// grant exp
	// Required: true
	// Format: int64
	GrantExp *int64 `json:"grantExp"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// season id
	// Required: true
	SeasonID *string `json:"seasonId"`

	// id
	// Enum: ['PAID_FOR', 'SWEAT']
	Source string `json:"source,omitempty"`

	// id
	Tags []string `json:"tags,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Exp grant history info
func (m *ExpGrantHistoryInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGrantExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSeasonID(formats); err != nil {
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

func (m *ExpGrantHistoryInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ExpGrantHistoryInfo) validateGrantExp(formats strfmt.Registry) error {

	if err := validate.Required("grantExp", "body", m.GrantExp); err != nil {
		return err
	}

	return nil
}

func (m *ExpGrantHistoryInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ExpGrantHistoryInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ExpGrantHistoryInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

var expGrantHistoryInfoTypeSourcePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["PAID_FOR", "SWEAT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		expGrantHistoryInfoTypeSourcePropEnum = append(expGrantHistoryInfoTypeSourcePropEnum, v)
	}
}

const (

	// ExpGrantHistoryInfoSourcePAIDFOR captures enum value "PAID_FOR"
	ExpGrantHistoryInfoSourcePAIDFOR string = "PAID_FOR"

	// ExpGrantHistoryInfoSourceSWEAT captures enum value "SWEAT"
	ExpGrantHistoryInfoSourceSWEAT string = "SWEAT"
)

// prop value enum
func (m *ExpGrantHistoryInfo) validateSourceEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, expGrantHistoryInfoTypeSourcePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ExpGrantHistoryInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ExpGrantHistoryInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ExpGrantHistoryInfo) UnmarshalBinary(b []byte) error {
	var res ExpGrantHistoryInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
