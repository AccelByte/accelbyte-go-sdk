// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievementclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsCreatePSNEvent Models create PSN event
//
// swagger:model Models create PSN event.
type ModelsCreatePSNEvent struct {

	// events
	// Required: true
	Events []*ModelsPSNEvent `json:"events"`

	// thirdpartyuserid
	// Required: true
	ThirdPartyUserID *string `json:"thirdPartyUserId"`

	// userid
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Models create PSN event
func (m *ModelsCreatePSNEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEvents(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThirdPartyUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsCreatePSNEvent) validateEvents(formats strfmt.Registry) error {

	if err := validate.Required("events", "body", m.Events); err != nil {
		return err
	}

	for i := 0; i < len(m.Events); i++ {
		if swag.IsZero(m.Events[i]) { // not required
			continue
		}

		if m.Events[i] != nil {
			if err := m.Events[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("events" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsCreatePSNEvent) validateThirdPartyUserID(formats strfmt.Registry) error {

	if err := validate.Required("thirdPartyUserId", "body", m.ThirdPartyUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsCreatePSNEvent) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsCreatePSNEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsCreatePSNEvent) UnmarshalBinary(b []byte) error {
	var res ModelsCreatePSNEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
