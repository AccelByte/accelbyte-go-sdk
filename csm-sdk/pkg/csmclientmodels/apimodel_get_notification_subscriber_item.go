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

// ApimodelGetNotificationSubscriberItem Apimodel get notification subscriber item
//
// swagger:model Apimodel get notification subscriber item.
type ApimodelGetNotificationSubscriberItem struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// notificationtype
	// Required: true
	NotificationType map[string]bool `json:"notificationType"`

	// subscriptionid
	// Required: true
	SubscriptionID *string `json:"subscriptionId"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel get notification subscriber item
func (m *ApimodelGetNotificationSubscriberItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSubscriptionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetNotificationSubscriberItem) validateSubscriptionID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionId", "body", m.SubscriptionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberItem) UnmarshalBinary(b []byte) error {
	var res ApimodelGetNotificationSubscriberItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
