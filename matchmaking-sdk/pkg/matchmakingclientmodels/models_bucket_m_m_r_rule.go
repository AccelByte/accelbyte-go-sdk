// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBucketMMRRule Models bucket MMR rule
//
// swagger:model Models bucket MMR rule.
type ModelsBucketMMRRule struct {

	// disable_authority
	// Required: true
	DisableAuthority *bool `json:"disable_authority"`

	// flex_authority_count
	// Required: true
	// Format: int32
	FlexAuthorityCount *int32 `json:"flex_authority_count"`

	// flex_flat_step_range
	// Required: true
	// Format: int32
	FlexFlatStepRange *int32 `json:"flex_flat_step_range"`

	// flex_immunity_count
	// Required: true
	// Format: int32
	FlexImmunityCount *int32 `json:"flex_immunity_count"`

	// flex_range_max
	// Required: true
	// Format: int32
	FlexRangeMax *int32 `json:"flex_range_max"`

	// flex_rate_ms
	// Required: true
	// Format: int64
	FlexRateMs *int64 `json:"flex_rate_ms"`

	// flex_step_max
	// Required: true
	// Format: int32
	FlexStepMax *int32 `json:"flex_step_max"`

	// force_authority_match
	// Required: true
	ForceAuthorityMatch *bool `json:"force_authority_match"`

	// initial_step_range
	// Required: true
	// Format: int32
	InitialStepRange *int32 `json:"initial_step_range"`

	// mmr_max
	// Required: true
	// Format: int32
	MmrMax *int32 `json:"mmr_max"`

	// mmr_mean
	// Required: true
	// Format: int32
	MmrMean *int32 `json:"mmr_mean"`

	// mmr_min
	// Required: true
	// Format: int32
	MmrMin *int32 `json:"mmr_min"`

	// mmr_std_dev
	// Required: true
	// Format: int32
	MmrStdDev *int32 `json:"mmr_std_dev"`

	// override_mmr_data
	// Required: true
	OverrideMmrData *bool `json:"override_mmr_data"`

	// use_bucket_mmr
	// Required: true
	UseBucketMmr *bool `json:"use_bucket_mmr"`

	// use_flat_flex_step
	// Required: true
	UseFlatFlexStep *bool `json:"use_flat_flex_step"`
}

// Validate validates this Models bucket MMR rule
func (m *ModelsBucketMMRRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDisableAuthority(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexAuthorityCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexFlatStepRange(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexImmunityCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexRangeMax(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexRateMs(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFlexStepMax(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateForceAuthorityMatch(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInitialStepRange(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMax(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMean(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrMin(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMmrStdDev(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOverrideMmrData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUseBucketMmr(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUseFlatFlexStep(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBucketMMRRule) validateDisableAuthority(formats strfmt.Registry) error {

	if err := validate.Required("disable_authority", "body", m.DisableAuthority); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexAuthorityCount(formats strfmt.Registry) error {

	if err := validate.Required("flex_authority_count", "body", m.FlexAuthorityCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexFlatStepRange(formats strfmt.Registry) error {

	if err := validate.Required("flex_flat_step_range", "body", m.FlexFlatStepRange); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexImmunityCount(formats strfmt.Registry) error {

	if err := validate.Required("flex_immunity_count", "body", m.FlexImmunityCount); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexRangeMax(formats strfmt.Registry) error {

	if err := validate.Required("flex_range_max", "body", m.FlexRangeMax); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexRateMs(formats strfmt.Registry) error {

	if err := validate.Required("flex_rate_ms", "body", m.FlexRateMs); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateFlexStepMax(formats strfmt.Registry) error {

	if err := validate.Required("flex_step_max", "body", m.FlexStepMax); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateForceAuthorityMatch(formats strfmt.Registry) error {

	if err := validate.Required("force_authority_match", "body", m.ForceAuthorityMatch); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateInitialStepRange(formats strfmt.Registry) error {

	if err := validate.Required("initial_step_range", "body", m.InitialStepRange); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateMmrMax(formats strfmt.Registry) error {

	if err := validate.Required("mmr_max", "body", m.MmrMax); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateMmrMean(formats strfmt.Registry) error {

	if err := validate.Required("mmr_mean", "body", m.MmrMean); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateMmrMin(formats strfmt.Registry) error {

	if err := validate.Required("mmr_min", "body", m.MmrMin); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateMmrStdDev(formats strfmt.Registry) error {

	if err := validate.Required("mmr_std_dev", "body", m.MmrStdDev); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateOverrideMmrData(formats strfmt.Registry) error {

	if err := validate.Required("override_mmr_data", "body", m.OverrideMmrData); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateUseBucketMmr(formats strfmt.Registry) error {

	if err := validate.Required("use_bucket_mmr", "body", m.UseBucketMmr); err != nil {
		return err
	}

	return nil
}

func (m *ModelsBucketMMRRule) validateUseFlatFlexStep(formats strfmt.Registry) error {

	if err := validate.Required("use_flat_flex_step", "body", m.UseFlatFlexStep); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBucketMMRRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBucketMMRRule) UnmarshalBinary(b []byte) error {
	var res ModelsBucketMMRRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
