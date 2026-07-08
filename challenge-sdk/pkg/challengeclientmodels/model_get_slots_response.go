// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelGetSlotsResponse Model get slots response
//
// swagger:model Model get slots response.
type ModelGetSlotsResponse struct {

	// currentround
	// Required: true
	CurrentRound []*ModelCurrentRoundSlotResponse `json:"currentRound"`

	// templateslots
	TemplateSlots []*ModelTemplateSlotResponse `json:"templateSlots,omitempty"`
}

// Validate validates this Model get slots response
func (m *ModelGetSlotsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCurrentRound(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelGetSlotsResponse) validateCurrentRound(formats strfmt.Registry) error {

	if err := validate.Required("currentRound", "body", m.CurrentRound); err != nil {
		return err
	}

	for i := 0; i < len(m.CurrentRound); i++ {
		if swag.IsZero(m.CurrentRound[i]) { // not required
			continue
		}

		if m.CurrentRound[i] != nil {
			if err := m.CurrentRound[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("currentRound" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelGetSlotsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelGetSlotsResponse) UnmarshalBinary(b []byte) error {
	var res ModelGetSlotsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
