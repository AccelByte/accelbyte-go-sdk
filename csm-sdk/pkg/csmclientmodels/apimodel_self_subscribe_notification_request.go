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

// ApimodelSelfSubscribeNotificationRequest Apimodel self subscribe notification request
//
// swagger:model Apimodel self subscribe notification request.
type ApimodelSelfSubscribeNotificationRequest struct {

	// notificationtype
	// Required: true
	NotificationType *string `json:"notificationType"`
}

// Validate validates this Apimodel self subscribe notification request
func (m *ApimodelSelfSubscribeNotificationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNotificationType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSelfSubscribeNotificationRequest) validateNotificationType(formats strfmt.Registry) error {

	if err := validate.Required("notificationType", "body", m.NotificationType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSelfSubscribeNotificationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSelfSubscribeNotificationRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelSelfSubscribeNotificationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
