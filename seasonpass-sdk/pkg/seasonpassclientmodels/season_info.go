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

// SeasonInfo Season info
//
// swagger:model Season info.
type SeasonInfo struct {

	// whether auto claim rewards
	// Required: true
	AutoClaim *bool `json:"autoClaim"`

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// default language, BCP 47 language tag
	// Required: true
	DefaultLanguage *string `json:"defaultLanguage"`

	// default required exp for a tier
	// Required: true
	// Format: int32
	DefaultRequiredExp *int32 `json:"defaultRequiredExp"`

	// draft store id
	// Required: true
	DraftStoreID *string `json:"draftStoreId"`

	// end date time
	// Required: true
	// Format: date-time
	End strfmt.DateTime `json:"end"`

	// strategy while exceed final tier exp
	// Required: true
	ExcessStrategy *ExcessStrategy `json:"excessStrategy"`

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

	// pass codes
	// Unique: true
	PassCodes []string `json:"passCodes"`

	// publishedAt
	// Format: date-time
	PublishedAt *strfmt.DateTime `json:"publishedAt,omitempty"`

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

	// tier item name
	// Required: true
	TierItemName *string `json:"tierItemName"`

	// updated at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Season info
func (m *SeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoClaim(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultRequiredExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDraftStoreID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExcessStrategy(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
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
	if err := m.validateTierItemName(formats); err != nil {
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

func (m *SeasonInfo) validateAutoClaim(formats strfmt.Registry) error {

	if err := validate.Required("autoClaim", "body", m.AutoClaim); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateDefaultLanguage(formats strfmt.Registry) error {

	if err := validate.Required("defaultLanguage", "body", m.DefaultLanguage); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateDefaultRequiredExp(formats strfmt.Registry) error {

	if err := validate.Required("defaultRequiredExp", "body", m.DefaultRequiredExp); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateDraftStoreID(formats strfmt.Registry) error {

	if err := validate.Required("draftStoreId", "body", m.DraftStoreID); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateEnd(formats strfmt.Registry) error {

	if err := validate.Required("end", "body", strfmt.DateTime(m.End)); err != nil {
		return err
	}

	if err := validate.FormatOf("end", "body", "date-time", m.End.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateExcessStrategy(formats strfmt.Registry) error {

	if err := validate.Required("excessStrategy", "body", m.ExcessStrategy); err != nil {
		return err
	}

	if m.ExcessStrategy != nil {
		if err := m.ExcessStrategy.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("excessStrategy")
			}
			return err
		}
	}

	return nil
}

func (m *SeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateLocalizations(formats strfmt.Registry) error {

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

func (m *SeasonInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

var seasonInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "PUBLISHED", "RETIRED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		seasonInfoTypeStatusPropEnum = append(seasonInfoTypeStatusPropEnum, v)
	}
}

const (

	// SeasonInfoStatusDRAFT captures enum value "DRAFT"
	SeasonInfoStatusDRAFT string = "DRAFT"

	// SeasonInfoStatusPUBLISHED captures enum value "PUBLISHED"
	SeasonInfoStatusPUBLISHED string = "PUBLISHED"

	// SeasonInfoStatusRETIRED captures enum value "RETIRED"
	SeasonInfoStatusRETIRED string = "RETIRED"
)

// prop value enum
func (m *SeasonInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, seasonInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SeasonInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateTierItemID(formats strfmt.Registry) error {

	if err := validate.Required("tierItemId", "body", m.TierItemID); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateTierItemName(formats strfmt.Registry) error {

	if err := validate.Required("tierItemName", "body", m.TierItemName); err != nil {
		return err
	}

	return nil
}

func (m *SeasonInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SeasonInfo) UnmarshalBinary(b []byte) error {
	var res SeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
