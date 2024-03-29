// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ListUserSeasonInfo List user season info
//
// swagger:model List user season info.
type ListUserSeasonInfo struct {

	// whether cleared all tiers
	// Required: true
	Cleared *bool `json:"cleared"`

	// current tier index, zero based
	// Required: true
	// Format: int32
	CurrentTierIndex *int32 `json:"currentTierIndex"`

	// enroll date time
	// Required: true
	// Format: date-time
	EnrolledAt strfmt.DateTime `json:"enrolledAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// last tier index, zero based
	// Required: true
	// Format: int32
	LastTierIndex *int32 `json:"lastTierIndex"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// season summary
	Season *SeasonSummary `json:"season,omitempty"`

	// season id
	// Required: true
	SeasonID *string `json:"seasonId"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this List user season info
func (m *ListUserSeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCleared(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentTierIndex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnrolledAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastTierIndex(formats); err != nil {
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

func (m *ListUserSeasonInfo) validateCleared(formats strfmt.Registry) error {

	if err := validate.Required("cleared", "body", m.Cleared); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateCurrentTierIndex(formats strfmt.Registry) error {

	if err := validate.Required("currentTierIndex", "body", m.CurrentTierIndex); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateEnrolledAt(formats strfmt.Registry) error {

	if err := validate.Required("enrolledAt", "body", strfmt.DateTime(m.EnrolledAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("enrolledAt", "body", "date-time", m.EnrolledAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateLastTierIndex(formats strfmt.Registry) error {

	if err := validate.Required("lastTierIndex", "body", m.LastTierIndex); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

func (m *ListUserSeasonInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ListUserSeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ListUserSeasonInfo) UnmarshalBinary(b []byte) error {
	var res ListUserSeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
