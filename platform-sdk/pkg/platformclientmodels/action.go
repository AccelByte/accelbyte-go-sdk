// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// Action Action
//
// swagger:model Action.
type Action struct {

	// operations
	Operations []*Operation `json:"operations,omitempty"`

	// status
	// Enum: ['FAILED', 'INIT', 'SKIPPED', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// statusreason
	StatusReason string `json:"statusReason,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Action
func (m *Action) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var actionTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAILED", "INIT", "SKIPPED", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		actionTypeStatusPropEnum = append(actionTypeStatusPropEnum, v)
	}
}

const (

	// ActionStatusFAILED captures enum value "FAILED"
	ActionStatusFAILED string = "FAILED"

	// ActionStatusINIT captures enum value "INIT"
	ActionStatusINIT string = "INIT"

	// ActionStatusSKIPPED captures enum value "SKIPPED"
	ActionStatusSKIPPED string = "SKIPPED"

	// ActionStatusSUCCESS captures enum value "SUCCESS"
	ActionStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *Action) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, actionTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *Action) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *Action) UnmarshalBinary(b []byte) error {
	var res Action
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
