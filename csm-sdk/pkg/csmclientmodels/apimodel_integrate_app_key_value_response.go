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

// ApimodelIntegrateAppKeyValueResponse Apimodel integrate app key value response
//
// swagger:model Apimodel integrate app key value response.
type ApimodelIntegrateAppKeyValueResponse struct {

	// acceptkeyvaluesecurecredentialhandling
	// Required: true
	AcceptKeyValueSecureCredentialHandling *bool `json:"acceptKeyValueSecureCredentialHandling"`

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// credentials
	// Required: true
	Credentials *ApimodelIntegrationCredentialInfo `json:"credentials"`

	// gamenamespace
	// Required: true
	GameNamespace *string `json:"gameNamespace"`

	// hostnames
	// Required: true
	Hostnames *string `json:"hostnames"`

	// integrationid
	// Required: true
	IntegrationID *string `json:"integrationId"`

	// platformname
	// Required: true
	PlatformName *string `json:"platformName"`

	// resourceid
	// Required: true
	ResourceID *string `json:"resourceId"`

	// resourcestatus
	// Required: true
	ResourceStatus *string `json:"resourceStatus"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// status
	// Required: true
	Status *string `json:"status"`

	// statusmessage
	// Required: true
	StatusMessage *string `json:"statusMessage"`
}

// Validate validates this Apimodel integrate app key value response
func (m *ApimodelIntegrateAppKeyValueResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAcceptKeyValueSecureCredentialHandling(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCredentials(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHostnames(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIntegrationID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateResourceStatus(formats); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateAcceptKeyValueSecureCredentialHandling(formats strfmt.Registry) error {

	if err := validate.Required("acceptKeyValueSecureCredentialHandling", "body", m.AcceptKeyValueSecureCredentialHandling); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateCredentials(formats strfmt.Registry) error {

	if err := validate.Required("credentials", "body", m.Credentials); err != nil {
		return err
	}

	if m.Credentials != nil {
		if err := m.Credentials.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("credentials")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateGameNamespace(formats strfmt.Registry) error {

	if err := validate.Required("gameNamespace", "body", m.GameNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateHostnames(formats strfmt.Registry) error {

	if err := validate.Required("hostnames", "body", m.Hostnames); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateIntegrationID(formats strfmt.Registry) error {

	if err := validate.Required("integrationId", "body", m.IntegrationID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateResourceStatus(formats strfmt.Registry) error {

	if err := validate.Required("resourceStatus", "body", m.ResourceStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelIntegrateAppKeyValueResponse) validateStatusMessage(formats strfmt.Registry) error {

	if err := validate.Required("statusMessage", "body", m.StatusMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelIntegrateAppKeyValueResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelIntegrateAppKeyValueResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelIntegrateAppKeyValueResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
