// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiActionAPIResponse Restapi action api response
//
// swagger:model Restapi action api response.
type RestapiActionAPIResponse struct {

	// actionid
	// Required: true
	ActionID *string `json:"actionId"`

	// actionname
	// Required: true
	ActionName *string `json:"actionName"`

	// eventname
	// Required: true
	EventName *string `json:"eventName"`
}

// Validate validates this Restapi action api response
func (m *RestapiActionAPIResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateActionName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEventName(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiActionAPIResponse) validateActionID(formats strfmt.Registry) error {

	if err := validate.Required("actionId", "body", m.ActionID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiActionAPIResponse) validateActionName(formats strfmt.Registry) error {

	if err := validate.Required("actionName", "body", m.ActionName); err != nil {
		return err
	}

	return nil
}

func (m *RestapiActionAPIResponse) validateEventName(formats strfmt.Registry) error {

	if err := validate.Required("eventName", "body", m.EventName); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiActionAPIResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiActionAPIResponse) UnmarshalBinary(b []byte) error {
	var res RestapiActionAPIResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
