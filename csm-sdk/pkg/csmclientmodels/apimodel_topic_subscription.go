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

// ApimodelTopicSubscription Apimodel topic subscription
//
// swagger:model Apimodel topic subscription.
type ApimodelTopicSubscription struct {

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// appname
	// Required: true
	AppName *string `json:"appName"`

	// queueid
	// Required: true
	QueueID *string `json:"queueId"`

	// subscriptionarn
	// Required: true
	SubscriptionArn *string `json:"subscriptionArn"`

	// subscriptionid
	// Required: true
	SubscriptionID *string `json:"subscriptionId"`

	// subscriptiontime
	// Required: true
	SubscriptionTime *string `json:"subscriptionTime"`
}

// Validate validates this Apimodel topic subscription
func (m *ApimodelTopicSubscription) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQueueID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionArn(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubscriptionTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelTopicSubscription) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicSubscription) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicSubscription) validateQueueID(formats strfmt.Registry) error {

	if err := validate.Required("queueId", "body", m.QueueID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicSubscription) validateSubscriptionArn(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionArn", "body", m.SubscriptionArn); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicSubscription) validateSubscriptionID(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionId", "body", m.SubscriptionID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelTopicSubscription) validateSubscriptionTime(formats strfmt.Registry) error {

	if err := validate.Required("subscriptionTime", "body", m.SubscriptionTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelTopicSubscription) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelTopicSubscription) UnmarshalBinary(b []byte) error {
	var res ApimodelTopicSubscription
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
