// Code generated by go-swagger; DO NOT EDIT.

package matchmakingclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAllianceRule models alliance rule
//
// swagger:model models.AllianceRule
type ModelsAllianceRule struct {

	// max number
	// Required: true
	MaxNumber *int32 `json:"max_number"`

	// min number
	// Required: true
	MinNumber *int32 `json:"min_number"`

	// player max number
	// Required: true
	PlayerMaxNumber *int32 `json:"player_max_number"`

	// player min number
	// Required: true
	PlayerMinNumber *int32 `json:"player_min_number"`
}

// Validate validates this models alliance rule
func (m *ModelsAllianceRule) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlayerMaxNumber(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePlayerMinNumber(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAllianceRule) validateMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("max_number", "body", m.MaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validateMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("min_number", "body", m.MinNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validatePlayerMaxNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_max_number", "body", m.PlayerMaxNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAllianceRule) validatePlayerMinNumber(formats strfmt.Registry) error {

	if err := validate.Required("player_min_number", "body", m.PlayerMinNumber); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAllianceRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAllianceRule) UnmarshalBinary(b []byte) error {
	var res ModelsAllianceRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
