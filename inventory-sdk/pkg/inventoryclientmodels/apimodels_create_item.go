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

// ApimodelsCreateItem Apimodels create item
//
// swagger:model Apimodels create item.
type ApimodelsCreateItem struct {

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// inventoryconfigurationcode
	InventoryConfigurationCode string `json:"inventoryConfigurationCode,omitempty"`

	// inventoryid
	InventoryID string `json:"inventoryId,omitempty"`

	// qty
	// Required: true
	// Format: int32
	Qty *int32 `json:"qty"`

	// servercustomattributes
	// Required: true
	ServerCustomAttributes interface{} `json:"serverCustomAttributes"`

	// slotid
	// Required: true
	SlotID *string `json:"slotId"`

	// slotused
	// Required: true
	// Format: int32
	SlotUsed *int32 `json:"slotUsed"`

	// source
	Source string `json:"source,omitempty"`

	// sourceitemid
	// Required: true
	SourceItemID *string `json:"sourceItemId"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// tospecificinventory
	// Required: true
	ToSpecificInventory *bool `json:"toSpecificInventory"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels create item
func (m *ApimodelsCreateItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQty(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSlotUsed(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSourceItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateToSpecificInventory(formats); err != nil {
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

func (m *ApimodelsCreateItem) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateSlotID(formats strfmt.Registry) error {

	if err := validate.Required("slotId", "body", m.SlotID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateSlotUsed(formats strfmt.Registry) error {

	if err := validate.Required("slotUsed", "body", m.SlotUsed); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateSourceItemID(formats strfmt.Registry) error {

	if err := validate.Required("sourceItemId", "body", m.SourceItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateToSpecificInventory(formats strfmt.Registry) error {

	if err := validate.Required("toSpecificInventory", "body", m.ToSpecificInventory); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsCreateItem) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsCreateItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsCreateItem) UnmarshalBinary(b []byte) error {
	var res ApimodelsCreateItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
