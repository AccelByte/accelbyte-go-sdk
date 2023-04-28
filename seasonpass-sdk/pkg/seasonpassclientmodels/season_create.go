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

// SeasonCreate Season create
//
// swagger:model Season create.
type SeasonCreate struct {

	// whether auto claim rewards, default true
	AutoClaim bool `json:"autoClaim"`

	// default language, BCP 47 language tag, default is en
	DefaultLanguage string `json:"defaultLanguage,omitempty"`

	// default exp required for a tier
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

	// strategy while exceed final tier exp, default NONE
	ExcessStrategy *ExcessStrategy `json:"excessStrategy,omitempty"`

	// images
	Images []*Image `json:"images,omitempty"`

	// localization, {language: localization} map
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// name, max length is 127
	// Required: true
	Name *string `json:"name"`

	// start date time
	// Required: true
	// Format: date-time
	Start strfmt.DateTime `json:"start"`

	// tier item id
	// Required: true
	TierItemID *string `json:"tierItemId"`
}

// Validate validates this Season create
func (m *SeasonCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDefaultRequiredExp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDraftStoreID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnd(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStart(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTierItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SeasonCreate) validateDefaultRequiredExp(formats strfmt.Registry) error {

	if err := validate.Required("defaultRequiredExp", "body", m.DefaultRequiredExp); err != nil {
		return err
	}

	return nil
}

func (m *SeasonCreate) validateDraftStoreID(formats strfmt.Registry) error {

	if err := validate.Required("draftStoreId", "body", m.DraftStoreID); err != nil {
		return err
	}

	return nil
}

func (m *SeasonCreate) validateEnd(formats strfmt.Registry) error {

	if err := validate.Required("end", "body", strfmt.DateTime(m.End)); err != nil {
		return err
	}

	if err := validate.FormatOf("end", "body", "date-time", m.End.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SeasonCreate) validateLocalizations(formats strfmt.Registry) error {

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

func (m *SeasonCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *SeasonCreate) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SeasonCreate) validateTierItemID(formats strfmt.Registry) error {

	if err := validate.Required("tierItemId", "body", m.TierItemID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SeasonCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SeasonCreate) UnmarshalBinary(b []byte) error {
	var res SeasonCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
