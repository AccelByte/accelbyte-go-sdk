// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// OculusIAPConfigRequest Oculus IAP config request
//
// swagger:model Oculus IAP config request.
type OculusIAPConfigRequest struct {

	// oculus api app id, don't allow white space and *
	// Required: true
	AppID *string `json:"appId"`

	// oculus api app secret, don't allow white space and *
	AppSecret string `json:"appSecret,omitempty"`

	// oculus webhook verify token, please refer this link: https://developers.meta.com/horizon/documentation/unity/ps-webhooks-getting-started
	WebhookVerifyToken string `json:"webhookVerifyToken,omitempty"`
}

// Validate validates this Oculus IAP config request
func (m *OculusIAPConfigRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OculusIAPConfigRequest) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OculusIAPConfigRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OculusIAPConfigRequest) UnmarshalBinary(b []byte) error {
	var res OculusIAPConfigRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
