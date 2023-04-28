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

// ListSeasonInfo List season info
//
// swagger:model List season info.
type ListSeasonInfo struct {

	// created at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// default language, BCP 47 language tag
	// Required: true
	DefaultLanguage *string `json:"defaultLanguage"`

	// end date time
	// Required: true
	// Format: date-time
	End strfmt.DateTime `json:"end"`

	// id
	// Required: true
	ID *string `json:"id"`

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

// Validate validates this List season info
func (m *ListSeasonInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDefaultLanguage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnd(formats); err != nil {
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

func (m *ListSeasonInfo) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateDefaultLanguage(formats strfmt.Registry) error {

	if err := validate.Required("defaultLanguage", "body", m.DefaultLanguage); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateEnd(formats strfmt.Registry) error {

	if err := validate.Required("end", "body", strfmt.DateTime(m.End)); err != nil {
		return err
	}

	if err := validate.FormatOf("end", "body", "date-time", m.End.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

var listSeasonInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "PUBLISHED", "RETIRED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		listSeasonInfoTypeStatusPropEnum = append(listSeasonInfoTypeStatusPropEnum, v)
	}
}

const (

	// ListSeasonInfoStatusDRAFT captures enum value "DRAFT"
	ListSeasonInfoStatusDRAFT string = "DRAFT"

	// ListSeasonInfoStatusPUBLISHED captures enum value "PUBLISHED"
	ListSeasonInfoStatusPUBLISHED string = "PUBLISHED"

	// ListSeasonInfoStatusRETIRED captures enum value "RETIRED"
	ListSeasonInfoStatusRETIRED string = "RETIRED"
)

// prop value enum
func (m *ListSeasonInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, listSeasonInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ListSeasonInfo) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateTierItemID(formats strfmt.Registry) error {

	if err := validate.Required("tierItemId", "body", m.TierItemID); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateTierItemName(formats strfmt.Registry) error {

	if err := validate.Required("tierItemName", "body", m.TierItemName); err != nil {
		return err
	}

	return nil
}

func (m *ListSeasonInfo) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ListSeasonInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ListSeasonInfo) UnmarshalBinary(b []byte) error {
	var res ListSeasonInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
