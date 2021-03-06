// Code generated by go-swagger; DO NOT EDIT.

package matchmakingclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsUpdateAllianceRule models update alliance rule
//
// swagger:model models.UpdateAllianceRule
type ModelsUpdateAllianceRule struct {

	// max number
	MaxNumber int32 `json:"maxNumber,omitempty"`

	// min number
	MinNumber int32 `json:"minNumber,omitempty"`

	// player max number
	PlayerMaxNumber int32 `json:"playerMaxNumber,omitempty"`

	// player min number
	PlayerMinNumber int32 `json:"playerMinNumber,omitempty"`
}

// Validate validates this models update alliance rule
func (m *ModelsUpdateAllianceRule) Validate(formats strfmt.Registry) error {
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsUpdateAllianceRule) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsUpdateAllianceRule) UnmarshalBinary(b []byte) error {
	var res ModelsUpdateAllianceRule
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
