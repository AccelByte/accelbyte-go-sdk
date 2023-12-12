// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package chatclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIMutedTopicResponse Api muted topic response
//
// swagger:model Api muted topic response.
type APIMutedTopicResponse struct {

	// expirationtime
	// Required: true
	// Format: int64
	ExpirationTime *int64 `json:"expirationTime"`

	// remainingtime
	// Required: true
	// Format: int64
	RemainingTime *int64 `json:"remainingTime"`

	// topicid
	// Required: true
	TopicID *string `json:"topicId"`
}

// Validate validates this Api muted topic response
func (m *APIMutedTopicResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExpirationTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRemainingTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTopicID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIMutedTopicResponse) validateExpirationTime(formats strfmt.Registry) error {

	if err := validate.Required("expirationTime", "body", m.ExpirationTime); err != nil {
		return err
	}

	return nil
}

func (m *APIMutedTopicResponse) validateRemainingTime(formats strfmt.Registry) error {

	if err := validate.Required("remainingTime", "body", m.RemainingTime); err != nil {
		return err
	}

	return nil
}

func (m *APIMutedTopicResponse) validateTopicID(formats strfmt.Registry) error {

	if err := validate.Required("topicId", "body", m.TopicID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIMutedTopicResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIMutedTopicResponse) UnmarshalBinary(b []byte) error {
	var res APIMutedTopicResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
