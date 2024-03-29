// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package seasonpassclientmodels

import (
	"encoding/json"
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// LocalizedSeasonInfo Localized season info
//
// swagger:model Localized season info.
type LocalizedSeasonInfo struct {

	// whether auto claim rewards
	// Required: true
	AutoClaim *bool `json:"autoClaim"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// description info
	Description string `json:"description,omitempty"`

	// end date time
	// Required: true
	// Format: date-time
	End strfmt.DateTime `json:"end"`

	// id
	// Required: true
	ID *string `json:"id"`

	// images
	Images []*Image `json:"images,omitempty"`

	// current language
	// Required: true
	Language *string `json:"language"`

	// name, max length is 127
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// pass codes
	// Unique: true
	PassCodes []string `json:"passCodes"`

	// passes info
	// Required: true
	Passes []*LocalizedPassInfo `json:"passes"`

	// publishedAt
	// Format: date-time
	PublishedAt *strfmt.DateTime `json:"publishedAt,omitempty"`

	// rewards info
	// Required: true
	Rewards map[string]RewardInfo `json:"rewards"`

	// start date time
	// Required: true
	// Format: date-time
	Start strfmt.DateTime `json:"start"`

	// status
	// Enum: ['DRAFT', 'PUBLISHED', 'RETIRED']
	// Required: true
	Status *string `json:"status"`

	// tier item id
	// Required: true
	TierItemID *string `json:"tierItemId"`

	// tiers info
	// Required: true
	Tiers []*Tier `json:"tiers"`

	// title info
	Title string `json:"title,omitempty"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Localized season info
func (m *LocalizedSeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoClaim(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLanguage(formats); err != nil {
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
	if err := m.validateStart(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTierItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTiers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *LocalizedSeasonInfo) validateAutoClaim(formats strfmt.Registry) error {

	if err := validate.Required("autoClaim", "body", m.AutoClaim); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateEnd(formats strfmt.Registry) error {

	if err := validate.Required("end", "body", strfmt.DateTime(m.End)); err != nil {
		return err
	}

	if err := validate.FormatOf("end", "body", "date-time", m.End.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateLanguage(formats strfmt.Registry) error {

	if err := validate.Required("language", "body", m.Language); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validatePasses(formats strfmt.Registry) error {

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

func (m *LocalizedSeasonInfo) validateRewards(formats strfmt.Registry) error {

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

func (m *LocalizedSeasonInfo) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

var localizedSeasonInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "PUBLISHED", "RETIRED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		localizedSeasonInfoTypeStatusPropEnum = append(localizedSeasonInfoTypeStatusPropEnum, v)
	}
}

const (

	// LocalizedSeasonInfoStatusDRAFT captures enum value "DRAFT"
	LocalizedSeasonInfoStatusDRAFT string = "DRAFT"

	// LocalizedSeasonInfoStatusPUBLISHED captures enum value "PUBLISHED"
	LocalizedSeasonInfoStatusPUBLISHED string = "PUBLISHED"

	// LocalizedSeasonInfoStatusRETIRED captures enum value "RETIRED"
	LocalizedSeasonInfoStatusRETIRED string = "RETIRED"
)

// prop value enum
func (m *LocalizedSeasonInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, localizedSeasonInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *LocalizedSeasonInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateTierItemID(formats strfmt.Registry) error {

	if err := validate.Required("tierItemId", "body", m.TierItemID); err != nil {
		return err
	}

	return nil
}

func (m *LocalizedSeasonInfo) validateTiers(formats strfmt.Registry) error {

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

func (m *LocalizedSeasonInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *LocalizedSeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *LocalizedSeasonInfo) UnmarshalBinary(b []byte) error {
	var res LocalizedSeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
