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

// ApimodelGetNotificationSubscriberStatusResponse Apimodel get notification subscriber status response
//
// swagger:model Apimodel get notification subscriber status response.
type ApimodelGetNotificationSubscriberStatusResponse struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// maxsubscription
	// Required: true
	// Format: int32
	MaxSubscription *int32 `json:"maxSubscription"`

	// notificationtype
	// Required: true
	NotificationType *string `json:"notificationType"`

	// subscribed
	// Required: true
	Subscribed *bool `json:"subscribed"`

	// subscriptionscount
	// Required: true
	// Format: int32
	SubscriptionsCount *int32 `json:"subscriptionsCount"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel get notification subscriber status response
func (m *ApimodelGetNotificationSubscriberStatusResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxSubscription(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNotificationType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscribed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionsCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetNotificationSubscriberStatusResponse) validateMaxSubscription(formats strfmt.Registry) error {

	if err := validate.Required("maxSubscription", "body", m.MaxSubscription); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetNotificationSubscriberStatusResponse) validateNotificationType(formats strfmt.Registry) error {

	if err := validate.Required("notificationType", "body", m.NotificationType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetNotificationSubscriberStatusResponse) validateSubscribed(formats strfmt.Registry) error {

	if err := validate.Required("subscribed", "body", m.Subscribed); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetNotificationSubscriberStatusResponse) validateSubscriptionsCount(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionsCount", "body", m.SubscriptionsCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberStatusResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberStatusResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelGetNotificationSubscriberStatusResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
