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

// ApimodelsIntegrationConfigurationResp Apimodels integration configuration resp
//
// swagger:model Apimodels integration configuration resp.
type ApimodelsIntegrationConfigurationResp struct {

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// itemtypes
	// Required: true
	ItemTypes []string `json:"itemTypes"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// servicename
	// Required: true
	ServiceName *string `json:"serviceName"`

	// status
	// Required: true
	Status *string `json:"status"`

	// targetinventorycode
	// Required: true
	TargetInventoryCode *string `json:"targetInventoryCode"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`
}

// Validate validates this Apimodels integration configuration resp
func (m *ApimodelsIntegrationConfigurationResp) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemTypes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateServiceName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTargetInventoryCode(formats); err != nil {
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

func (m *ApimodelsIntegrationConfigurationResp) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateItemTypes(formats strfmt.Registry) error {

	if err := validate.Required("itemTypes", "body", m.ItemTypes); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateServiceName(formats strfmt.Registry) error {

	if err := validate.Required("serviceName", "body", m.ServiceName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateTargetInventoryCode(formats strfmt.Registry) error {

	if err := validate.Required("targetInventoryCode", "body", m.TargetInventoryCode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsIntegrationConfigurationResp) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsIntegrationConfigurationResp) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsIntegrationConfigurationResp) UnmarshalBinary(b []byte) error {
	var res ApimodelsIntegrationConfigurationResp
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
