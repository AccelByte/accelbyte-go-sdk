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

// ApimodelsPurchaseValidationItemReq Apimodels purchase validation item req
//
// swagger:model Apimodels purchase validation item req.
type ApimodelsPurchaseValidationItemReq struct {

	// bundledqty
	// Required: true
	// Format: int32
	BundledQty *int32 `json:"bundledQty"`

	// entitlementtype
	// Required: true
	EntitlementType *string `json:"entitlementType"`

	// inventoryconfig
	// Required: true
	InventoryConfig *ApimodelsInventoryConfig `json:"inventoryConfig"`

	// itemid
	// Required: true
	ItemID *string `json:"itemId"`

	// itemtype
	// Required: true
	ItemType *string `json:"itemType"`

	// sku
	// Required: true
	Sku *string `json:"sku"`

	// stackable
	// Required: true
	Stackable *bool `json:"stackable"`

	// usecount
	// Format: int32
	UseCount int32 `json:"useCount,omitempty"`
}

// Validate validates this Apimodels purchase validation item req
func (m *ApimodelsPurchaseValidationItemReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBundledQty(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEntitlementType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateInventoryConfig(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSku(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStackable(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateBundledQty(formats strfmt.Registry) error {

	if err := validate.Required("bundledQty", "body", m.BundledQty); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateEntitlementType(formats strfmt.Registry) error {

	if err := validate.Required("entitlementType", "body", m.EntitlementType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateInventoryConfig(formats strfmt.Registry) error {

	if err := validate.Required("inventoryConfig", "body", m.InventoryConfig); err != nil {
		return err
	}

	if m.InventoryConfig != nil {
		if err := m.InventoryConfig.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("inventoryConfig")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateItemType(formats strfmt.Registry) error {

	if err := validate.Required("itemType", "body", m.ItemType); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateSku(formats strfmt.Registry) error {

	if err := validate.Required("sku", "body", m.Sku); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsPurchaseValidationItemReq) validateStackable(formats strfmt.Registry) error {

	if err := validate.Required("stackable", "body", m.Stackable); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsPurchaseValidationItemReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsPurchaseValidationItemReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsPurchaseValidationItemReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
