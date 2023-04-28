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

// ClaimableUserSeasonInfo Claimable user season info
//
// swagger:model Claimable user season info.
type ClaimableUserSeasonInfo struct {

	// Claiming rewards, zero based tier index as key, rewards per pass as value
	// Required: true
	ClaimingRewards interface{} `json:"claimingRewards"`

	// whether cleared all tiers
	// Required: true
	Cleared *bool `json:"cleared"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// gained exp for current tier
	// Required: true
	// Format: int32
	CurrentExp *int32 `json:"currentExp"`

	// current tier index, zero based
	// Required: true
	// Format: int32
	CurrentTierIndex *int32 `json:"currentTierIndex"`

	// enroll date time
	// Required: true
	// Format: date-time
	EnrolledAt strfmt.DateTime `json:"enrolledAt"`

	// enrolled passes
	// Unique: true
	// Required: true
	EnrolledPasses []string `json:"enrolledPasses"`

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

	// required exp for current tier
	// Required: true
	// Format: int32
	RequiredExp *int32 `json:"requiredExp"`

	// season summary
	Season *SeasonSummary `json:"season,omitempty"`

	// season id
	// Required: true
	SeasonID *string `json:"seasonId"`

	// To claim rewards, zero based tier index as key, rewards per pass as value
	// Required: true
	ToClaimRewards interface{} `json:"toClaimRewards"`

	// total exp
	// Format: int64
	TotalExp int64 `json:"totalExp,omitempty"`

	// total paid-for exp
	// Format: int64
	TotalPaidForExp int64 `json:"totalPaidForExp,omitempty"`

	// total sweat exp
	// Format: int64
	TotalSweatExp int64 `json:"totalSweatExp,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// user id
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Claimable user season info
func (m *ClaimableUserSeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCleared(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCurrentTierIndex(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnrolledAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnrolledPasses(formats); err != nil {
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
	if err := m.validateRequiredExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSeasonID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ClaimableUserSeasonInfo) validateCleared(formats strfmt.Registry) error {

	if err := validate.Required("cleared", "body", m.Cleared); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateCurrentExp(formats strfmt.Registry) error {

	if err := validate.Required("currentExp", "body", m.CurrentExp); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateCurrentTierIndex(formats strfmt.Registry) error {

	if err := validate.Required("currentTierIndex", "body", m.CurrentTierIndex); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateEnrolledAt(formats strfmt.Registry) error {

	if err := validate.Required("enrolledAt", "body", strfmt.DateTime(m.EnrolledAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("enrolledAt", "body", "date-time", m.EnrolledAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateEnrolledPasses(formats strfmt.Registry) error {

	if err := validate.Required("enrolledPasses", "body", m.EnrolledPasses); err != nil {
		return err
	}
	if err := validate.UniqueItems("enrolledPasses", "body", m.EnrolledPasses); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateLastTierIndex(formats strfmt.Registry) error {

	if err := validate.Required("lastTierIndex", "body", m.LastTierIndex); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateRequiredExp(formats strfmt.Registry) error {

	if err := validate.Required("requiredExp", "body", m.RequiredExp); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateSeasonID(formats strfmt.Registry) error {

	if err := validate.Required("seasonId", "body", m.SeasonID); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ClaimableUserSeasonInfo) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ClaimableUserSeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClaimableUserSeasonInfo) UnmarshalBinary(b []byte) error {
	var res ClaimableUserSeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
