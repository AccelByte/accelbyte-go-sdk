// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsConsumeItem Apimodels consume item
//
// swagger:model Apimodels consume item.
type ApimodelsConsumeItem struct {

	// daterangevalidation
	DateRangeValidation bool `json:"dateRangeValidation"`

	// inventoryid
	// Required: true
	InventoryID *string `json:"inventoryId"`

	// options
	Options []string `json:"options,omitempty"`

	// qty
	// Required: true
	// Format: int32
	Qty *int32 `json:"qty"`

	// slotid
	// Required: true
	SlotID *string `json:"slotId"`

	// sourceitemid
	// Required: true
	SourceItemID *string `json:"sourceItemId"`
}

// Validate validates this Apimodels consume item
func (m *ApimodelsConsumeItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInventoryID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQty(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSourceItemID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsConsumeItem) validateInventoryID(formats strfmt.Registry) error {

	if err := validate.Required("inventoryId", "body", m.InventoryID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConsumeItem) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConsumeItem) validateSlotID(formats strfmt.Registry) error {

	if err := validate.Required("slotId", "body", m.SlotID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsConsumeItem) validateSourceItemID(formats strfmt.Registry) error {

	if err := validate.Required("sourceItemId", "body", m.SourceItemID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsConsumeItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsConsumeItem) UnmarshalBinary(b []byte) error {
	var res ApimodelsConsumeItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
