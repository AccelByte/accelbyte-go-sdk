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

// UserSeasonSummary User season summary
//
// swagger:model User season summary.
type UserSeasonSummary struct {

	// whether cleared all tiers
	Cleared bool `json:"cleared"`

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// gained exp for current tier
	// Format: int32
	CurrentExp int32 `json:"currentExp,omitempty"`

	// current tier index, zero based
	// Format: int32
	CurrentTierIndex int32 `json:"currentTierIndex,omitempty"`

	// enroll date time
	// Format: date-time
	EnrolledAt *strfmt.DateTime `json:"enrolledAt,omitempty"`

	// enrolled passes
	// Unique: true
	EnrolledPasses []string `json:"enrolledPasses"`

	// id
	ID string `json:"id,omitempty"`

	// last tier index, zero based
	// Format: int32
	LastTierIndex int32 `json:"lastTierIndex,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// required exp for current tier
	// Format: int32
	RequiredExp int32 `json:"requiredExp,omitempty"`

	// season id
	SeasonID string `json:"seasonId,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this User season summary
func (m *UserSeasonSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
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

func (m *UserSeasonSummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *UserSeasonSummary) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *UserSeasonSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *UserSeasonSummary) UnmarshalBinary(b []byte) error {
	var res UserSeasonSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
