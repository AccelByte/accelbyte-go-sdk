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

// ApimodelsPurchaseValidationReq Apimodels purchase validation req
//
// swagger:model Apimodels purchase validation req.
type ApimodelsPurchaseValidationReq struct {

	// entitlementtype
	EntitlementType string `json:"entitlementType,omitempty"`

	// inventoryconfig
	InventoryConfig *ApimodelsInventoryConfig `json:"inventoryConfig,omitempty"`

	// itemid
	// Required: true
	ItemID *string `json:"itemId"`

	// itemtype
	// Required: true
	ItemType *string `json:"itemType"`

	// items
	Items []*ApimodelsPurchaseValidationItemReq `json:"items,omitempty"`

	// quantity
	// Required: true
	// Format: int32
	Quantity *int32 `json:"quantity"`

	// sku
	// Required: true
	Sku *string `json:"sku"`

	// stackable
	Stackable bool `json:"stackable"`

	// usecount
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Apimodels purchase validation req
func (m *ApimodelsPurchaseValidationReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateQuantity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSku(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPurchaseValidationReq) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationReq) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationReq) validateQuantity(formats strfmt.Registry) error {

	if err := validate.Required("quantity", "body", m.Quantity); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationReq) validateSku(formats strfmt.Registry) error {

	if err := validate.Required("sku", "body", m.Sku); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPurchaseValidationReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPurchaseValidationReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsPurchaseValidationReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
