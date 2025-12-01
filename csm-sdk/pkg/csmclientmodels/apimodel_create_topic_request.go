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

// ApimodelCreateTopicRequest Apimodel create topic request
//
// swagger:model Apimodel create topic request.
type ApimodelCreateTopicRequest struct {

	// description
	Description string `json:"description,omitempty"`

	// topicname
	// Required: true
	TopicName *string `json:"topicName"`
}

// Validate validates this Apimodel create topic request
func (m *ApimodelCreateTopicRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTopicName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCreateTopicRequest) validateTopicName(formats strfmt.Registry) error {

	if err := validate.Required("topicName", "body", m.TopicName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCreateTopicRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCreateTopicRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelCreateTopicRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
