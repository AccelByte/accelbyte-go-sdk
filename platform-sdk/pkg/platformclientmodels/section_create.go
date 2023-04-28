// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// SectionCreate Section create
//
// swagger:model Section create.
type SectionCreate struct {

	// active, default true
	Active bool `json:"active"`

	// display order
	// Format: int32
	DisplayOrder int32 `json:"displayOrder,omitempty"`

	// end date
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate"`

	// section extension
	Ext interface{} `json:"ext,omitempty"`

	// fix period rotation config, don't allow null when rotation type is FIXED_PERIOD
	FixedPeriodRotationConfig *FixedPeriodRotationConfig `json:"fixedPeriodRotationConfig,omitempty"`

	// item ids
	Items []*SectionItem `json:"items,omitempty"`

	// Localization, key language, value localization content
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// section name
	// Required: true
	Name *string `json:"name"`

	// rotation type, default is NONE
	// Enum: ['CUSTOM', 'FIXED_PERIOD', 'NONE']
	RotationType string `json:"rotationType,omitempty"`

	// start date
	// Required: true
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate"`

	// view id
	ViewID string `json:"viewId,omitempty"`
}

// Validate validates this Section create
func (m *SectionCreate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartDate(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SectionCreate) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SectionCreate) validateLocalizations(formats strfmt.Registry) error {

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

func (m *SectionCreate) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

var sectionCreateTypeRotationTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "FIXED_PERIOD", "NONE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		sectionCreateTypeRotationTypePropEnum = append(sectionCreateTypeRotationTypePropEnum, v)
	}
}

const (

	// SectionCreateRotationTypeCUSTOM captures enum value "CUSTOM"
	SectionCreateRotationTypeCUSTOM string = "CUSTOM"

	// SectionCreateRotationTypeFIXEDPERIOD captures enum value "FIXED_PERIOD"
	SectionCreateRotationTypeFIXEDPERIOD string = "FIXED_PERIOD"

	// SectionCreateRotationTypeNONE captures enum value "NONE"
	SectionCreateRotationTypeNONE string = "NONE"
)

// prop value enum
func (m *SectionCreate) validateRotationTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, sectionCreateTypeRotationTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SectionCreate) validateStartDate(formats strfmt.Registry) error {

	if err := validate.Required("startDate", "body", strfmt.DateTime(m.StartDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SectionCreate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SectionCreate) UnmarshalBinary(b []byte) error {
	var res SectionCreate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
