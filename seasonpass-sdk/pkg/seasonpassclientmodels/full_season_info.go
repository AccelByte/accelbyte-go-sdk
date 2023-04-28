// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// FullSeasonInfo Full season info
//
// swagger:model Full season info.
type FullSeasonInfo struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// name, max length is 127
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// passes info
	// Required: true
	Passes []*PassInfo `json:"passes"`

	// rewards info
	// Required: true
	Rewards map[string]RewardInfo `json:"rewards"`

	// tiers info
	// Required: true
	Tiers []*Tier `json:"tiers"`
}

// Validate validates this Full season info
func (m *FullSeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePasses(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTiers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FullSeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *FullSeasonInfo) validateLocalizations(formats strfmt.Registry) error {

	if err := validate.Required("localizations", "body", m.Localizations); err != nil {
		return err
	}

	for k := range m.Localizations {

		if err := validate.Required("localizations"+"."+k, "body", m.Localizations[k]); err != nil {
			return err
		}
		if val, ok := m.Localizations[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *FullSeasonInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *FullSeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *FullSeasonInfo) validatePasses(formats strfmt.Registry) error {

	if err := validate.Required("passes", "body", m.Passes); err != nil {
		return err
	}

	for i := 0; i < len(m.Passes); i++ {
		if swag.IsZero(m.Passes[i]) { // not required
			continue
		}

		if m.Passes[i] != nil {
			if err := m.Passes[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("passes" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *FullSeasonInfo) validateRewards(formats strfmt.Registry) error {

	if err := validate.Required("rewards", "body", m.Rewards); err != nil {
		return err
	}

	for k := range m.Rewards {

		if err := validate.Required("rewards"+"."+k, "body", m.Rewards[k]); err != nil {
			return err
		}
		if val, ok := m.Rewards[k]; ok {
			if err := val.Validate(formats); err != nil {
				return err
			}
		}

	}

	return nil
}

func (m *FullSeasonInfo) validateTiers(formats strfmt.Registry) error {

	if err := validate.Required("tiers", "body", m.Tiers); err != nil {
		return err
	}

	for i := 0; i < len(m.Tiers); i++ {
		if swag.IsZero(m.Tiers[i]) { // not required
			continue
		}

		if m.Tiers[i] != nil {
			if err := m.Tiers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("tiers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *FullSeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FullSeasonInfo) UnmarshalBinary(b []byte) error {
	var res FullSeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
