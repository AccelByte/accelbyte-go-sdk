// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challengeclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelMoveGoalToSlotRequest Model move goal to slot request
//
// swagger:model Model move goal to slot request.
type ModelMoveGoalToSlotRequest struct {

	// slotindex
	// Required: true
	// Format: int32
	SlotIndex *int32 `json:"slotIndex"`
}

// Validate validates this Model move goal to slot request
func (m *ModelMoveGoalToSlotRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateSlotIndex(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelMoveGoalToSlotRequest) validateSlotIndex(formats strfmt.Registry) error {

	if err := validate.Required("slotIndex", "body", m.SlotIndex); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelMoveGoalToSlotRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelMoveGoalToSlotRequest) UnmarshalBinary(b []byte) error {
	var res ModelMoveGoalToSlotRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
