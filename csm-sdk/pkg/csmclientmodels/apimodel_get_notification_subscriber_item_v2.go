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

// ApimodelGetNotificationSubscriberItemV2 Apimodel get notification subscriber item V2
//
// swagger:model Apimodel get notification subscriber item V2.
type ApimodelGetNotificationSubscriberItemV2 struct {

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// emailaddress
	EmailAddress string `json:"emailAddress,omitempty"`

	// notificationtypes
	// Required: true
	NotificationTypes []*ApimodelNotificationType `json:"notificationTypes"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Apimodel get notification subscriber item V2
func (m *ApimodelGetNotificationSubscriberItemV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNotificationTypes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetNotificationSubscriberItemV2) validateNotificationTypes(formats strfmt.Registry) error {

	if err := validate.Required("notificationTypes", "body", m.NotificationTypes); err != nil {
		return err
	}

	for i := 0; i < len(m.NotificationTypes); i++ {
		if swag.IsZero(m.NotificationTypes[i]) { // not required
			continue
		}

		if m.NotificationTypes[i] != nil {
			if err := m.NotificationTypes[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("notificationTypes" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberItemV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberItemV2) UnmarshalBinary(b []byte) error {
	var res ApimodelGetNotificationSubscriberItemV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
