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

// RestapiBanAccountActionResponse Restapi ban account action response
//
// swagger:model Restapi ban account action response.
type RestapiBanAccountActionResponse struct {

	// Ban comment
	Comment string `json:"comment,omitempty"`

	// Ban duration in minutes, -1 means unlimited duration
	// Required: true
	// Format: int32
	Duration *int32 `json:"duration"`

	// Ban reason
	// Required: true
	Reason *string `json:"reason"`

	// Skip notification for banned user (e.g. email notification)
	// Required: true
	SkipNotif *bool `json:"skipNotif"`

	// Ban type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Restapi ban account action response
func (m *RestapiBanAccountActionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDuration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSkipNotif(formats); err != nil {
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

func (m *RestapiBanAccountActionResponse) validateDuration(formats strfmt.Registry) error {

	if err := validate.Required("duration", "body", m.Duration); err != nil {
		return err
	}

	return nil
}

func (m *RestapiBanAccountActionResponse) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *RestapiBanAccountActionResponse) validateSkipNotif(formats strfmt.Registry) error {

	if err := validate.Required("skipNotif", "body", m.SkipNotif); err != nil {
		return err
	}

	return nil
}

func (m *RestapiBanAccountActionResponse) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiBanAccountActionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiBanAccountActionResponse) UnmarshalBinary(b []byte) error {
	var res RestapiBanAccountActionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
