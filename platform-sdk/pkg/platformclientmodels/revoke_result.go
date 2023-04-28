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

// RevokeResult Revoke result
//
// swagger:model Revoke result.
type RevokeResult struct {

	// revokeitemsummaries
	RevokeItemSummaries []*RevokeItemSummary `json:"revokeItemSummaries,omitempty"`

	// reward
	Reward *PlatformReward `json:"reward,omitempty"`

	// status
	// Enum: ['COMPLETED', 'SKIPPED']
	Status string `json:"status,omitempty"`
}

// Validate validates this Revoke result
func (m *RevokeResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeResultTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COMPLETED", "SKIPPED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeResultTypeStatusPropEnum = append(revokeResultTypeStatusPropEnum, v)
	}
}

const (

	// RevokeResultStatusCOMPLETED captures enum value "COMPLETED"
	RevokeResultStatusCOMPLETED string = "COMPLETED"

	// RevokeResultStatusSKIPPED captures enum value "SKIPPED"
	RevokeResultStatusSKIPPED string = "SKIPPED"
)

// prop value enum
func (m *RevokeResult) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeResultTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeResult) UnmarshalBinary(b []byte) error {
	var res RevokeResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
