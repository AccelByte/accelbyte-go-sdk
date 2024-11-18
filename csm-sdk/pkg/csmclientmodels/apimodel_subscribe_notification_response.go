// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelSubscribeNotificationResponse Apimodel subscribe notification response
//
// swagger:model Apimodel subscribe notification response.
type ApimodelSubscribeNotificationResponse struct {

	// notificationtype
	// Required: true
	NotificationType *string `json:"notificationType"`

	// subscriptions
	// Required: true
	Subscriptions []*ApimodelSubscriberItemResponse `json:"subscriptions"`
}

// Validate validates this Apimodel subscribe notification response
func (m *ApimodelSubscribeNotificationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNotificationType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptions(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSubscribeNotificationResponse) validateNotificationType(formats strfmt.Registry) error {

	if err := validate.Required("notificationType", "body", m.NotificationType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSubscribeNotificationResponse) validateSubscriptions(formats strfmt.Registry) error {

	if err := validate.Required("subscriptions", "body", m.Subscriptions); err != nil {
		return err
	}

	for i := 0; i < len(m.Subscriptions); i++ {
		if swag.IsZero(m.Subscriptions[i]) { // not required
			continue
		}

		if m.Subscriptions[i] != nil {
			if err := m.Subscriptions[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("subscriptions" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSubscribeNotificationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSubscribeNotificationResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelSubscribeNotificationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
