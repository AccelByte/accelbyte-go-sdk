// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AccountcommonJWTBanV3 accountcommon j w t ban v3
//
// swagger:model accountcommon.JWTBanV3
type AccountcommonJWTBanV3 struct {

	// ban
	// Required: true
	Ban *string `json:"ban"`

	// disabled date
	// Format: date-time
	DisabledDate *strfmt.DateTime `json:"disabledDate,omitempty"`

	// enabled
	// Required: true
	Enabled *bool `json:"enabled"`

	// end date
	// Required: true
	// Format: date-time
	EndDate strfmt.DateTime `json:"endDate"`

	// targeted namespace
	// Required: true
	TargetedNamespace *string `json:"targetedNamespace"`
}

// Validate validates this accountcommon j w t ban v3
func (m *AccountcommonJWTBanV3) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBan(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDisabledDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEnabled(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateEndDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTargetedNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountcommonJWTBanV3) validateBan(formats strfmt.Registry) error {

	if err := validate.Required("ban", "body", m.Ban); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonJWTBanV3) validateDisabledDate(formats strfmt.Registry) error {

	if swag.IsZero(m.DisabledDate) { // not required
		return nil
	}

	if err := validate.FormatOf("disabledDate", "body", "date-time", m.DisabledDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonJWTBanV3) validateEnabled(formats strfmt.Registry) error {

	if err := validate.Required("enabled", "body", m.Enabled); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonJWTBanV3) validateEndDate(formats strfmt.Registry) error {

	if err := validate.Required("endDate", "body", strfmt.DateTime(m.EndDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("endDate", "body", "date-time", m.EndDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *AccountcommonJWTBanV3) validateTargetedNamespace(formats strfmt.Registry) error {

	if err := validate.Required("targetedNamespace", "body", m.TargetedNamespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountcommonJWTBanV3) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountcommonJWTBanV3) UnmarshalBinary(b []byte) error {
	var res AccountcommonJWTBanV3
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
