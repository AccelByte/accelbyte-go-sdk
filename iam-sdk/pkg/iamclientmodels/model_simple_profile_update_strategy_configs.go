// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelSimpleProfileUpdateStrategyConfigs Model simple profile update strategy configs
//
// swagger:model Model simple profile update strategy configs.
type ModelSimpleProfileUpdateStrategyConfigs struct {

	// only work when type is limited
	Config *AccountcommonProfileUpdateConfig `json:"config,omitempty"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// allow value [dob, username, display_name, country]
	// Required: true
	Field *string `json:"field"`

	// allow value [initial_only, limited, unlimited]
	// Required: true
	Type *string `json:"type"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Model simple profile update strategy configs
func (m *ModelSimpleProfileUpdateStrategyConfigs) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateField(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
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

func (m *ModelSimpleProfileUpdateStrategyConfigs) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelSimpleProfileUpdateStrategyConfigs) validateField(formats strfmt.Registry) error {

	if err := validate.Required("field", "body", m.Field); err != nil {
		return err
	}

	return nil
}

func (m *ModelSimpleProfileUpdateStrategyConfigs) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelSimpleProfileUpdateStrategyConfigs) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelSimpleProfileUpdateStrategyConfigs) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelSimpleProfileUpdateStrategyConfigs) UnmarshalBinary(b []byte) error {
	var res ModelSimpleProfileUpdateStrategyConfigs
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
