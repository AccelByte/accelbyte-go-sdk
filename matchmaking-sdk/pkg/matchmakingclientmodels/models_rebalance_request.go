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

// ModelsRebalanceRequest models rebalance request
//
// swagger:model models.RebalanceRequest
type ModelsRebalanceRequest struct {

	// match id
	// Required: true
	MatchID string `json:"match_id"`
}

// Validate validates this models rebalance request
func (m *ModelsRebalanceRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsRebalanceRequest) validateMatchID(formats strfmt.Registry) error {

	if err := validate.RequiredString("match_id", "body", string(m.MatchID)); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsRebalanceRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsRebalanceRequest) UnmarshalBinary(b []byte) error {
	var res ModelsRebalanceRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
