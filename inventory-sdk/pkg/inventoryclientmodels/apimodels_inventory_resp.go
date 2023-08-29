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

// ApimodelsInventoryResp Apimodels inventory resp
//
// swagger:model Apimodels inventory resp.
type ApimodelsInventoryResp struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// inventoryconfigurationcode
	// Required: true
	InventoryConfigurationCode *string `json:"inventoryConfigurationCode"`

	// inventoryconfigurationid
	// Required: true
	InventoryConfigurationID *string `json:"inventoryConfigurationId"`

	// maxslots
	// Required: true
	// Format: int32
	MaxSlots *int32 `json:"maxSlots"`

	// maxupgradeslots
	// Required: true
	// Format: int32
	MaxUpgradeSlots *int32 `json:"maxUpgradeSlots"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// usedcountslots
	// Required: true
	// Format: int32
	UsedCountSlots *int32 `json:"usedCountSlots"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Apimodels inventory resp
func (m *ApimodelsInventoryResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInventoryConfigurationCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInventoryConfigurationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxSlots(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxUpgradeSlots(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUsedCountSlots(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsInventoryResp) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateInventoryConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("inventoryConfigurationCode", "body", m.InventoryConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateInventoryConfigurationID(formats strfmt.Registry) error {

	if err := validate.Required("inventoryConfigurationId", "body", m.InventoryConfigurationID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateMaxSlots(formats strfmt.Registry) error {

	if err := validate.Required("maxSlots", "body", m.MaxSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateMaxUpgradeSlots(formats strfmt.Registry) error {

	if err := validate.Required("maxUpgradeSlots", "body", m.MaxUpgradeSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateUsedCountSlots(formats strfmt.Registry) error {

	if err := validate.Required("usedCountSlots", "body", m.UsedCountSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryResp) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsInventoryResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsInventoryResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsInventoryResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
