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

// SeasonSummary Season summary
//
// swagger:model Season summary.
type SeasonSummary struct {

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

	// season pass codes
	// Unique: true
	PassCodes []string `json:"passCodes"`

	// previous season, only present in some situation
	Previous *SeasonSummary `json:"previous,omitempty"`

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
}

// Validate validates this Season summary
func (m *SeasonSummary) Validate(formats strfmt.Registry) error {
	var res []error

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *SeasonSummary) validateEnd(formats strfmt.Registry) error {

	if err := validate.Required("end", "body", strfmt.DateTime(m.End)); err != nil {
		return err
	}

	if err := validate.FormatOf("end", "body", "date-time", m.End.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *SeasonSummary) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *SeasonSummary) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *SeasonSummary) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *SeasonSummary) validateStart(formats strfmt.Registry) error {

	if err := validate.Required("start", "body", strfmt.DateTime(m.Start)); err != nil {
		return err
	}

	if err := validate.FormatOf("start", "body", "date-time", m.Start.String(), formats); err != nil {
		return err
	}

	return nil
}

var seasonSummaryTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["DRAFT", "PUBLISHED", "RETIRED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		seasonSummaryTypeStatusPropEnum = append(seasonSummaryTypeStatusPropEnum, v)
	}
}

const (

	// SeasonSummaryStatusDRAFT captures enum value "DRAFT"
	SeasonSummaryStatusDRAFT string = "DRAFT"

	// SeasonSummaryStatusPUBLISHED captures enum value "PUBLISHED"
	SeasonSummaryStatusPUBLISHED string = "PUBLISHED"

	// SeasonSummaryStatusRETIRED captures enum value "RETIRED"
	SeasonSummaryStatusRETIRED string = "RETIRED"
)

// prop value enum
func (m *SeasonSummary) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, seasonSummaryTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *SeasonSummary) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *SeasonSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *SeasonSummary) UnmarshalBinary(b []byte) error {
	var res SeasonSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
