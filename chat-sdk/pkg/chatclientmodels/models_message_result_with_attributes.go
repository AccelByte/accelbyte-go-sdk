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

// ModelsMessageResultWithAttributes Models message result with attributes
//
// swagger:model Models message result with attributes.
type ModelsMessageResultWithAttributes struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// attributes
	Attributes interface{} `json:"attributes,omitempty"`

	// cencoredwords
	CencoredWords []string `json:"cencoredWords,omitempty"`

	// classifications
	Classifications []string `json:"classifications,omitempty"`

	// finalmessage
	// Required: true
	FinalMessage *string `json:"finalMessage"`

	// id
	// Required: true
	ID *string `json:"id"`

	// referenceid
	ReferenceID string `json:"referenceId,omitempty"`

	// timestamp
	// Required: true
	// Format: int64
	Timestamp *int64 `json:"timestamp"`
}

// Validate validates this Models message result with attributes
func (m *ModelsMessageResultWithAttributes) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateFinalMessage(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
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

func (m *ModelsMessageResultWithAttributes) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageResultWithAttributes) validateFinalMessage(formats strfmt.Registry) error {

	if err := validate.Required("finalMessage", "body", m.FinalMessage); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageResultWithAttributes) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsMessageResultWithAttributes) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", m.Timestamp); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMessageResultWithAttributes) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMessageResultWithAttributes) UnmarshalBinary(b []byte) error {
	var res ModelsMessageResultWithAttributes
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
