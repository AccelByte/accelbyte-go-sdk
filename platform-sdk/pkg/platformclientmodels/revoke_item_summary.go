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

// RevokeItemSummary Revoke item summary
//
// swagger:model Revoke item summary.
type RevokeItemSummary struct {

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// itemsku
	ItemSku string `json:"itemSku,omitempty"`

	// itemtype
	ItemType string `json:"itemType,omitempty"`

	// revokestatus
	// Enum: ['COMPLETED', 'SKIPPED']
	RevokeStatus string `json:"revokeStatus,omitempty"`
}

// Validate validates this Revoke item summary
func (m *RevokeItemSummary) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var revokeItemSummaryTypeRevokeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["COMPLETED", "SKIPPED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		revokeItemSummaryTypeRevokeStatusPropEnum = append(revokeItemSummaryTypeRevokeStatusPropEnum, v)
	}
}

const (

	// RevokeItemSummaryRevokeStatusCOMPLETED captures enum value "COMPLETED"
	RevokeItemSummaryRevokeStatusCOMPLETED string = "COMPLETED"

	// RevokeItemSummaryRevokeStatusSKIPPED captures enum value "SKIPPED"
	RevokeItemSummaryRevokeStatusSKIPPED string = "SKIPPED"
)

// prop value enum
func (m *RevokeItemSummary) validateRevokeStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, revokeItemSummaryTypeRevokeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *RevokeItemSummary) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RevokeItemSummary) UnmarshalBinary(b []byte) error {
	var res RevokeItemSummary
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
