// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelIntegrationListItem Apimodel integration list item
//
// swagger:model Apimodel integration list item.
type ApimodelIntegrationListItem struct {

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// appname
	// Required: true
	AppName *string `json:"appName"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// gamenamespace
	// Required: true
	GameNamespace *string `json:"gameNamespace"`

	// integrationid
	// Required: true
	IntegrationID *string `json:"integrationId"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// status
	// Required: true
	Status *string `json:"status"`

	// statusmessage
	// Required: true
	StatusMessage *string `json:"statusMessage"`

	// studioname
	// Required: true
	StudioName *string `json:"studioName"`
}

// Validate validates this Apimodel integration list item
func (m *ApimodelIntegrationListItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIntegrationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScenario(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatusMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStudioName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelIntegrationListItem) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateGameNamespace(formats strfmt.Registry) error {

	if err := validate.Required("gameNamespace", "body", m.GameNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateIntegrationID(formats strfmt.Registry) error {

	if err := validate.Required("integrationId", "body", m.IntegrationID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateStatusMessage(formats strfmt.Registry) error {

	if err := validate.Required("statusMessage", "body", m.StatusMessage); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrationListItem) validateStudioName(formats strfmt.Registry) error {

	if err := validate.Required("studioName", "body", m.StudioName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelIntegrationListItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelIntegrationListItem) UnmarshalBinary(b []byte) error {
	var res ApimodelIntegrationListItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
