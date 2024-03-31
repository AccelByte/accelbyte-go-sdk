// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsHistory Apimodels history
//
// swagger:model Apimodels history.
type ApimodelsHistory struct {

	// eventname
	// Required: true
	EventName *string `json:"eventName"`

	// payload
	// Required: true
	Payload *ModelsGameSession `json:"payload"`

	// requesterclientid
	RequesterClientID string `json:"requesterClientID,omitempty"`

	// requesteruserid
	RequesterUserID string `json:"requesterUserID,omitempty"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`
}

// Validate validates this Apimodels history
func (m *ApimodelsHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePayload(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsHistory) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("eventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsHistory) validatePayload(formats strfmt.Registry) error {

	if err := validate.Required("payload", "body", m.Payload); err != nil {
		return err
	}

	if m.Payload != nil {
		if err := m.Payload.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("payload")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelsHistory) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsHistory) UnmarshalBinary(b []byte) error {
	var res ApimodelsHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
