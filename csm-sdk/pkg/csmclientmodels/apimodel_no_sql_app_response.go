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

// ApimodelNoSQLAppResponse Apimodel no SQL app response
//
// swagger:model Apimodel no SQL app response.
type ApimodelNoSQLAppResponse struct {

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// appname
	// Required: true
	AppName *string `json:"appName"`

	// gamename
	// Required: true
	GameName *string `json:"gameName"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`
}

// Validate validates this Apimodel no SQL app response
func (m *ApimodelNoSQLAppResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScenario(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelNoSQLAppResponse) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLAppResponse) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLAppResponse) validateGameName(formats strfmt.Registry) error {

	if err := validate.Required("gameName", "body", m.GameName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelNoSQLAppResponse) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelNoSQLAppResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelNoSQLAppResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelNoSQLAppResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
