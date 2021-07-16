// Code generated by go-swagger; DO NOT EDIT.

package platformclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// EntitlementUpdate A DTO object for updating entitlement API call. Leave the field empty if don't want to update.
//
// swagger:model EntitlementUpdate
type EntitlementUpdate struct {

	// end date of the entitlement. yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate,omitempty"`

	// nullFieldList
	NullFieldList []string `json:"nullFieldList"`

	// purchased quantity of a distributable entitlement
	Quantity int32 `json:"quantity,omitempty"`

	// start date of the entitlement. yyyy-MM-dd'T'HH:mm:ss.SSS'Z'
	// Format: date-time
	StartDate strfmt.DateTime `json:"startDate,omitempty"`

	// status
	// Enum: [ACTIVE INACTIVE CONSUMED DISTRIBUTED REVOKED]
	Status string `json:"status,omitempty"`

	// useCount of a consumable entitlement
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this entitlement update
func (m *EntitlementUpdate) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateStartDate(formats); err != nil {
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

func (m *EntitlementUpdate) validateEndDate(formats strfmt.Registry) error {

	if swag.IsZero(m.EndDate) { // not required
		return nil
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *EntitlementUpdate) validateStartDate(formats strfmt.Registry) error {

	if swag.IsZero(m.StartDate) { // not required
		return nil
	}

	if err := validate.FormatOf("startDate", "body", "date-time", m.StartDate.String(), formats); err != nil {
		return err
	}

	return nil
}

var entitlementUpdateTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ACTIVE","INACTIVE","CONSUMED","DISTRIBUTED","REVOKED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		entitlementUpdateTypeStatusPropEnum = append(entitlementUpdateTypeStatusPropEnum, v)
	}
}

const (

	// EntitlementUpdateStatusACTIVE captures enum value "ACTIVE"
	EntitlementUpdateStatusACTIVE string = "ACTIVE"

	// EntitlementUpdateStatusINACTIVE captures enum value "INACTIVE"
	EntitlementUpdateStatusINACTIVE string = "INACTIVE"

	// EntitlementUpdateStatusCONSUMED captures enum value "CONSUMED"
	EntitlementUpdateStatusCONSUMED string = "CONSUMED"

	// EntitlementUpdateStatusDISTRIBUTED captures enum value "DISTRIBUTED"
	EntitlementUpdateStatusDISTRIBUTED string = "DISTRIBUTED"

	// EntitlementUpdateStatusREVOKED captures enum value "REVOKED"
	EntitlementUpdateStatusREVOKED string = "REVOKED"
)

// prop value enum
func (m *EntitlementUpdate) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, entitlementUpdateTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *EntitlementUpdate) validateStatus(formats strfmt.Registry) error {

	if swag.IsZero(m.Status) { // not required
		return nil
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *EntitlementUpdate) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *EntitlementUpdate) UnmarshalBinary(b []byte) error {
	var res EntitlementUpdate
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
