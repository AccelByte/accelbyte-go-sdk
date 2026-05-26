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

// ApimodelGetIntegrationAppKeyValueResponse Apimodel get integration app key value response
//
// swagger:model Apimodel get integration app key value response.
type ApimodelGetIntegrationAppKeyValueResponse struct {

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

	// status
	// Required: true
	Status *string `json:"status"`

	// statusmessage
	// Required: true
	StatusMessage *string `json:"statusMessage"`
}

// Validate validates this Apimodel get integration app key value response
func (m *ApimodelGetIntegrationAppKeyValueResponse) Validate(formats strfmt.Registry) error {
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

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateAcceptKeyValueSecureCredentialHandling(formats strfmt.Registry) error {

	if err := validate.Required("acceptKeyValueSecureCredentialHandling", "body", m.AcceptKeyValueSecureCredentialHandling); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateCredentials(formats strfmt.Registry) error {

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

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateGameNamespace(formats strfmt.Registry) error {

	if err := validate.Required("gameNamespace", "body", m.GameNamespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateHostnames(formats strfmt.Registry) error {

	if err := validate.Required("hostnames", "body", m.Hostnames); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateIntegrationID(formats strfmt.Registry) error {

	if err := validate.Required("integrationId", "body", m.IntegrationID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validatePlatformName(formats strfmt.Registry) error {

	if err := validate.Required("platformName", "body", m.PlatformName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateResourceID(formats strfmt.Registry) error {

	if err := validate.Required("resourceId", "body", m.ResourceID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateResourceStatus(formats strfmt.Registry) error {

	if err := validate.Required("resourceStatus", "body", m.ResourceStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetIntegrationAppKeyValueResponse) validateStatusMessage(formats strfmt.Registry) error {

	if err := validate.Required("statusMessage", "body", m.StatusMessage); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetIntegrationAppKeyValueResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetIntegrationAppKeyValueResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelGetIntegrationAppKeyValueResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
