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

// ApimodelsSaveItemReq Apimodels save item req
//
// swagger:model Apimodels save item req.
type ApimodelsSaveItemReq struct {

	// customattributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// inventoryconfigurationcode
	// Required: true
	InventoryConfigurationCode *string `json:"inventoryConfigurationCode"`

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

	// sourceitemid
	// Required: true
	SourceItemID *string `json:"sourceItemId"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Apimodels save item req
func (m *ApimodelsSaveItemReq) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInventoryConfigurationCode(formats); err != nil {
		res = append(res, err)
	}
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
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsSaveItemReq) validateInventoryConfigurationCode(formats strfmt.Registry) error {

	if err := validate.Required("inventoryConfigurationCode", "body", m.InventoryConfigurationCode); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateQty(formats strfmt.Registry) error {

	if err := validate.Required("qty", "body", m.Qty); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateSlotID(formats strfmt.Registry) error {

	if err := validate.Required("slotId", "body", m.SlotID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateSlotUsed(formats strfmt.Registry) error {

	if err := validate.Required("slotUsed", "body", m.SlotUsed); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateSourceItemID(formats strfmt.Registry) error {

	if err := validate.Required("sourceItemId", "body", m.SourceItemID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsSaveItemReq) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsSaveItemReq) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsSaveItemReq) UnmarshalBinary(b []byte) error {
	var res ApimodelsSaveItemReq
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
