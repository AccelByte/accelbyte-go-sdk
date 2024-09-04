// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelRoleOverrideResponse Model role override response
//
// swagger:model Model role override response.
type ModelRoleOverrideResponse struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// additions
	// Required: true
	Additions []*AccountcommonOverrideRolePermission `json:"additions"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// exclusions
	// Required: true
	Exclusions []*AccountcommonOverrideRolePermission `json:"exclusions"`

	// identity
	// Required: true
	Identity *string `json:"identity"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// overrides
	// Required: true
	Overrides []*AccountcommonOverrideRolePermission `json:"overrides"`

	// replacements
	// Required: true
	Replacements []*AccountcommonReplaceRolePermission `json:"replacements"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Model role override response
func (m *ModelRoleOverrideResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAdditions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExclusions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIdentity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOverrides(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReplacements(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelRoleOverrideResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateAdditions(formats strfmt.Registry) error {

	if err := validate.Required("additions", "body", m.Additions); err != nil {
		return err
	}

	for i := 0; i < len(m.Additions); i++ {
		if swag.IsZero(m.Additions[i]) { // not required
			continue
		}

		if m.Additions[i] != nil {
			if err := m.Additions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("additions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateExclusions(formats strfmt.Registry) error {

	if err := validate.Required("exclusions", "body", m.Exclusions); err != nil {
		return err
	}

	for i := 0; i < len(m.Exclusions); i++ {
		if swag.IsZero(m.Exclusions[i]) { // not required
			continue
		}

		if m.Exclusions[i] != nil {
			if err := m.Exclusions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("exclusions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateIdentity(formats strfmt.Registry) error {

	if err := validate.Required("identity", "body", m.Identity); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateOverrides(formats strfmt.Registry) error {

	if err := validate.Required("overrides", "body", m.Overrides); err != nil {
		return err
	}

	for i := 0; i < len(m.Overrides); i++ {
		if swag.IsZero(m.Overrides[i]) { // not required
			continue
		}

		if m.Overrides[i] != nil {
			if err := m.Overrides[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("overrides" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelRoleOverrideResponse) validateReplacements(formats strfmt.Registry) error {

	if err := validate.Required("replacements", "body", m.Replacements); err != nil {
		return err
	}

	for i := 0; i < len(m.Replacements); i++ {
		if swag.IsZero(m.Replacements[i]) { // not required
			continue
		}

		if m.Replacements[i] != nil {
			if err := m.Replacements[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("replacements" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelRoleOverrideResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelRoleOverrideResponse) UnmarshalBinary(b []byte) error {
	var res ModelRoleOverrideResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
