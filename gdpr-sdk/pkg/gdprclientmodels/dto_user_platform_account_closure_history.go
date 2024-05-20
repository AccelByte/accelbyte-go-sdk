// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gdprclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// DTOUserPlatformAccountClosureHistory Dto user platform account closure history
//
// swagger:model Dto user platform account closure history.
type DTOUserPlatformAccountClosureHistory struct {

	// closeddate
	// Required: true
	// Format: int64
	ClosedDate *int64 `json:"closedDate"`

	// environment
	// Required: true
	Environment *string `json:"environment"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform
	// Required: true
	Platform *string `json:"platform"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Dto user platform account closure history
func (m *DTOUserPlatformAccountClosureHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClosedDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnvironment(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
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

func (m *DTOUserPlatformAccountClosureHistory) validateClosedDate(formats strfmt.Registry) error {

	if err := validate.Required("closedDate", "body", m.ClosedDate); err != nil {
		return err
	}

	return nil
}

func (m *DTOUserPlatformAccountClosureHistory) validateEnvironment(formats strfmt.Registry) error {

	if err := validate.Required("environment", "body", m.Environment); err != nil {
		return err
	}

	return nil
}

func (m *DTOUserPlatformAccountClosureHistory) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *DTOUserPlatformAccountClosureHistory) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

func (m *DTOUserPlatformAccountClosureHistory) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *DTOUserPlatformAccountClosureHistory) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DTOUserPlatformAccountClosureHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DTOUserPlatformAccountClosureHistory) UnmarshalBinary(b []byte) error {
	var res DTOUserPlatformAccountClosureHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
