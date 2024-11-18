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

// ApimodelSubscribeNotificationRequest Apimodel subscribe notification request
//
// swagger:model Apimodel subscribe notification request.
type ApimodelSubscribeNotificationRequest struct {

	// notificationtype
	// Required: true
	NotificationType *string `json:"notificationType"`

	// subscribers
	// Required: true
	Subscribers []*ApimodelSubscriberItemRequest `json:"subscribers"`
}

// Validate validates this Apimodel subscribe notification request
func (m *ApimodelSubscribeNotificationRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNotificationType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscribers(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelSubscribeNotificationRequest) validateNotificationType(formats strfmt.Registry) error {

	if err := validate.Required("notificationType", "body", m.NotificationType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelSubscribeNotificationRequest) validateSubscribers(formats strfmt.Registry) error {

	if err := validate.Required("subscribers", "body", m.Subscribers); err != nil {
		return err
	}

	for i := 0; i < len(m.Subscribers); i++ {
		if swag.IsZero(m.Subscribers[i]) { // not required
			continue
		}

		if m.Subscribers[i] != nil {
			if err := m.Subscribers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("subscribers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelSubscribeNotificationRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelSubscribeNotificationRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelSubscribeNotificationRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
