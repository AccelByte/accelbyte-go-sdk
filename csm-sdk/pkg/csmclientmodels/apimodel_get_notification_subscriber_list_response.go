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

// ApimodelGetNotificationSubscriberListResponse Apimodel get notification subscriber list response
//
// swagger:model Apimodel get notification subscriber list response.
type ApimodelGetNotificationSubscriberListResponse struct {

	// maxsubscriptions
	// Required: true
	// Format: int32
	MaxSubscriptions *int32 `json:"maxSubscriptions"`

	// subscriptions
	// Required: true
	Subscriptions []*ApimodelGetNotificationSubscriberItem `json:"subscriptions"`
}

// Validate validates this Apimodel get notification subscriber list response
func (m *ApimodelGetNotificationSubscriberListResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateMaxSubscriptions(formats); err != nil {
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

func (m *ApimodelGetNotificationSubscriberListResponse) validateMaxSubscriptions(formats strfmt.Registry) error {

	if err := validate.Required("maxSubscriptions", "body", m.MaxSubscriptions); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelGetNotificationSubscriberListResponse) validateSubscriptions(formats strfmt.Registry) error {

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
func (m *ApimodelGetNotificationSubscriberListResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetNotificationSubscriberListResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelGetNotificationSubscriberListResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
