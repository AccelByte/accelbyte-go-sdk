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

// FullSectionInfo Full section info
//
// swagger:model Full section info.
type FullSectionInfo struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// view created time
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

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

	// section item namings
	ItemNamings []*ItemNaming `json:"itemNamings,omitempty"`

	// section items
	Items []*SectionItem `json:"items,omitempty"`

	// Localization, key language, value localization content
	// Required: true
	Localizations map[string]Localization `json:"localizations"`

	// name
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// rotation type, default is NONE
	// Enum: ['CUSTOM', 'FIXED_PERIOD', 'NONE']
	RotationType string `json:"rotationType,omitempty"`

	// id
	// Required: true
	SectionID *string `json:"sectionId"`

	// start date
	// Required: true
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate"`

	// view updated time
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// view id
	ViewID string `json:"viewId,omitempty"`

	// view name
	ViewName string `json:"viewName,omitempty"`
}

// Validate validates this Full section info
func (m *FullSectionInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSectionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStartDate(formats); err != nil {
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

func (m *FullSectionInfo) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateLocalizations(formats strfmt.Registry) error {

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

func (m *FullSectionInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var fullSectionInfoTypeRotationTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CUSTOM", "FIXED_PERIOD", "NONE"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fullSectionInfoTypeRotationTypePropEnum = append(fullSectionInfoTypeRotationTypePropEnum, v)
	}
}

const (

	// FullSectionInfoRotationTypeCUSTOM captures enum value "CUSTOM"
	FullSectionInfoRotationTypeCUSTOM string = "CUSTOM"

	// FullSectionInfoRotationTypeFIXEDPERIOD captures enum value "FIXED_PERIOD"
	FullSectionInfoRotationTypeFIXEDPERIOD string = "FIXED_PERIOD"

	// FullSectionInfoRotationTypeNONE captures enum value "NONE"
	FullSectionInfoRotationTypeNONE string = "NONE"
)

// prop value enum
func (m *FullSectionInfo) validateRotationTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fullSectionInfoTypeRotationTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FullSectionInfo) validateSectionID(formats strfmt.Registry) error {

	if err := validate.Required("sectionId", "body", m.SectionID); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateStartDate(formats strfmt.Registry) error {

	if err := validate.Required("startDate", "body", strfmt.DateTime(m.StartDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *FullSectionInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FullSectionInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FullSectionInfo) UnmarshalBinary(b []byte) error {
	var res FullSectionInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
