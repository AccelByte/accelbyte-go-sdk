// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsCreateInventoryConfigurationReq Apimodels create inventory configuration req
//
// swagger:model Apimodels create inventory configuration req.
type ApimodelsCreateInventoryConfigurationReq struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// description
	Description string `json:"description,omitempty"`

	// initialmaxslots
	// Required: true
	// Format: int32
	InitialMaxSlots *int32 `json:"initialMaxSlots"`

	// maxinstancesperuser
	// Required: true
	// Format: int32
	MaxInstancesPerUser *int32 `json:"maxInstancesPerUser"`

	// maxupgradeslots
	// Required: true
	// Format: int32
	MaxUpgradeSlots *int32 `json:"maxUpgradeSlots"`

	// name
	Name string `json:"name,omitempty"`
}

// Validate validates this Apimodels create inventory configuration req
func (m *ApimodelsCreateInventoryConfigurationReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInitialMaxSlots(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxInstancesPerUser(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxUpgradeSlots(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsCreateInventoryConfigurationReq) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateInventoryConfigurationReq) validateInitialMaxSlots(formats strfmt.Registry) error {

	if err := validate.Required("initialMaxSlots", "body", m.InitialMaxSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateInventoryConfigurationReq) validateMaxInstancesPerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxInstancesPerUser", "body", m.MaxInstancesPerUser); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateInventoryConfigurationReq) validateMaxUpgradeSlots(formats strfmt.Registry) error {

	if err := validate.Required("maxUpgradeSlots", "body", m.MaxUpgradeSlots); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateInventoryConfigurationReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateInventoryConfigurationReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateInventoryConfigurationReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
