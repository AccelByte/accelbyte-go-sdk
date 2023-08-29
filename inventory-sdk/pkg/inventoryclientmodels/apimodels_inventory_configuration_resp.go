// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsInventoryConfigurationResp Apimodels inventory configuration resp
//
// swagger:model Apimodels inventory configuration resp.
type ApimodelsInventoryConfigurationResp struct {

	// code
	// Required: true
	Code *string `json:"code"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// description
	// Required: true
	Description *string `json:"description"`

	// id
	// Required: true
	ID *string `json:"id"`

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
	// Required: true
	Name *string `json:"name"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// status
	// Enum: ['INIT', 'TIED']
	// Required: true
	Status *string `json:"status"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Apimodels inventory configuration resp
func (m *ApimodelsInventoryConfigurationResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
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
	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
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

func (m *ApimodelsInventoryConfigurationResp) validateCode(formats strfmt.Registry) error {

	if err := validate.Required("code", "body", m.Code); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateInitialMaxSlots(formats strfmt.Registry) error {

	if err := validate.Required("initialMaxSlots", "body", m.InitialMaxSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateMaxInstancesPerUser(formats strfmt.Registry) error {

	if err := validate.Required("maxInstancesPerUser", "body", m.MaxInstancesPerUser); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateMaxUpgradeSlots(formats strfmt.Registry) error {

	if err := validate.Required("maxUpgradeSlots", "body", m.MaxUpgradeSlots); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var apimodelsInventoryConfigurationRespTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["INIT", "TIED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		apimodelsInventoryConfigurationRespTypeStatusPropEnum = append(apimodelsInventoryConfigurationRespTypeStatusPropEnum, v)
	}
}

const (

	// ApimodelsInventoryConfigurationRespStatusINIT captures enum value "INIT"
	ApimodelsInventoryConfigurationRespStatusINIT string = "INIT"

	// ApimodelsInventoryConfigurationRespStatusTIED captures enum value "TIED"
	ApimodelsInventoryConfigurationRespStatusTIED string = "TIED"
)

// prop value enum
func (m *ApimodelsInventoryConfigurationResp) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, apimodelsInventoryConfigurationRespTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsInventoryConfigurationResp) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsInventoryConfigurationResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsInventoryConfigurationResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsInventoryConfigurationResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
