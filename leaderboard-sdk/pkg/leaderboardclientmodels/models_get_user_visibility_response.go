// Code generated by go-swagger; DO NOT EDIT.

package leaderboardclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGetUserVisibilityResponse models get user visibility response
//
// swagger:model models.GetUserVisibilityResponse
type ModelsGetUserVisibilityResponse struct {

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// user Id
	// Required: true
	UserID *string `json:"userId"`

	// visibility
	// Required: true
	Visibility *bool `json:"visibility"`
}

// Validate validates this models get user visibility response
func (m *ModelsGetUserVisibilityResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateVisibility(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsGetUserVisibilityResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetUserVisibilityResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGetUserVisibilityResponse) validateVisibility(formats strfmt.Registry) error {

	if err := validate.Required("visibility", "body", m.Visibility); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGetUserVisibilityResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGetUserVisibilityResponse) UnmarshalBinary(b []byte) error {
	var res ModelsGetUserVisibilityResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
