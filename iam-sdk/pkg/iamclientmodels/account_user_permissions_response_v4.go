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

// AccountUserPermissionsResponseV4 account user permissions response v4
//
// swagger:model account.UserPermissionsResponseV4
type AccountUserPermissionsResponseV4 struct {

	// action
	// Required: true
	Action *int32 `json:"action"`

	// resource
	// Required: true
	Resource *string `json:"resource"`

	// sched action
	SchedAction int32 `json:"schedAction,omitempty"`

	// sched cron
	SchedCron string `json:"schedCron,omitempty"`

	// sched range
	SchedRange []string `json:"schedRange"`
}

// Validate validates this account user permissions response v4
func (m *AccountUserPermissionsResponseV4) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateResource(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AccountUserPermissionsResponseV4) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *AccountUserPermissionsResponseV4) validateResource(formats strfmt.Registry) error {

	if err := validate.Required("resource", "body", m.Resource); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AccountUserPermissionsResponseV4) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AccountUserPermissionsResponseV4) UnmarshalBinary(b []byte) error {
	var res AccountUserPermissionsResponseV4
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
