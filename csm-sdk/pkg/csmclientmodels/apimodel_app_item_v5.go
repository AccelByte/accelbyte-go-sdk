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

// ApimodelAppItemV5 Apimodel app item V5
//
// swagger:model Apimodel app item V5.
type ApimodelAppItemV5 struct {

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// appname
	// Required: true
	AppName *string `json:"appName"`

	// appstatus
	// Required: true
	AppStatus *string `json:"appStatus"`

	// basepath
	BasePath string `json:"basePath,omitempty"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// description
	Description string `json:"description,omitempty"`

	// gamename
	// Required: true
	GameName *string `json:"gameName"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// vmsharingconfiguration
	VMSharingConfiguration string `json:"vmSharingConfiguration,omitempty"`
}

// Validate validates this Apimodel app item V5
func (m *ApimodelAppItemV5) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScenario(formats); err != nil {
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

func (m *ApimodelAppItemV5) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateAppStatus(formats strfmt.Registry) error {

	if err := validate.Required("appStatus", "body", m.AppStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateGameName(formats strfmt.Registry) error {

	if err := validate.Required("gameName", "body", m.GameName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItemV5) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAppItemV5) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAppItemV5) UnmarshalBinary(b []byte) error {
	var res ApimodelAppItemV5
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
