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

// ApimodelCreateSubscriptionRequest Apimodel create subscription request
//
// swagger:model Apimodel create subscription request.
type ApimodelCreateSubscriptionRequest struct {

	// topicnames
	// Required: true
	TopicNames []string `json:"topicNames"`
}

// Validate validates this Apimodel create subscription request
func (m *ApimodelCreateSubscriptionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTopicNames(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateSubscriptionRequest) validateTopicNames(formats strfmt.Registry) error {

	if err := validate.Required("topicNames", "body", m.TopicNames); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateSubscriptionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateSubscriptionRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateSubscriptionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
