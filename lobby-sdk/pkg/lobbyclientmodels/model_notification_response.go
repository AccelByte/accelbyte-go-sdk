// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelNotificationResponse Model notification response
//
// swagger:model Model notification response.
type ModelNotificationResponse struct {

	// from
	From string `json:"from,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// lobbysessionid
	LobbySessionID string `json:"lobbySessionID,omitempty"`

	// logintype
	LoginType string `json:"loginType,omitempty"`

	// payload
	Payload string `json:"payload,omitempty"`

	// reconnectfromcode
	// Format: int32
	ReconnectFromCode int32 `json:"reconnectFromCode,omitempty"`

	// sentat
	SentAt string `json:"sentAt,omitempty"`

	// sequenceid
	// Required: true
	// Format: int32
	SequenceID *int32 `json:"sequenceID"`

	// sequencenumber
	// Required: true
	// Format: int32
	SequenceNumber *int32 `json:"sequenceNumber"`

	// to
	To string `json:"to,omitempty"`

	// topic
	Topic string `json:"topic,omitempty"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Model notification response
func (m *ModelNotificationResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSequenceID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSequenceNumber(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelNotificationResponse) validateSequenceID(formats strfmt.Registry) error {

	if err := validate.Required("sequenceID", "body", m.SequenceID); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationResponse) validateSequenceNumber(formats strfmt.Registry) error {

	if err := validate.Required("sequenceNumber", "body", m.SequenceNumber); err != nil {
		return err
	}

	return nil
}

func (m *ModelNotificationResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelNotificationResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelNotificationResponse) UnmarshalBinary(b []byte) error {
	var res ModelNotificationResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
