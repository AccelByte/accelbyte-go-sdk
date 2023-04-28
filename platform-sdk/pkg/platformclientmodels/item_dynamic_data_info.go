// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ItemDynamicDataInfo Item dynamic data info
//
// swagger:model Item dynamic data info.
type ItemDynamicDataInfo struct {

	// the available count of this item, -1 means UNLIMITED, corresponding to maxCount
	// Required: true
	// Format: int32
	AvailableCount *int32 `json:"availableCount"`

	// item id
	// Required: true
	ItemID *string `json:"itemId"`

	// item namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// the available count of this item for current user, -1 means UNLIMITED, corresponding to maxCountPerUser
	// Required: true
	// Format: int64
	UserAvailableCount *int64 `json:"userAvailableCount"`

	// the max count that user can do purchase, -1 means UNLIMITED
	// Required: true
	// Format: int64
	UserPurchaseLimit *int64 `json:"userPurchaseLimit"`
}

// Validate validates this Item dynamic data info
func (m *ItemDynamicDataInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAvailableCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserAvailableCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserPurchaseLimit(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ItemDynamicDataInfo) validateAvailableCount(formats strfmt.Registry) error {

	if err := validate.Required("availableCount", "body", m.AvailableCount); err != nil {
		return err
	}

	return nil
}

func (m *ItemDynamicDataInfo) validateItemID(formats strfmt.Registry) error {

	if err := validate.Required("itemId", "body", m.ItemID); err != nil {
		return err
	}

	return nil
}

func (m *ItemDynamicDataInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ItemDynamicDataInfo) validateUserAvailableCount(formats strfmt.Registry) error {

	if err := validate.Required("userAvailableCount", "body", m.UserAvailableCount); err != nil {
		return err
	}

	return nil
}

func (m *ItemDynamicDataInfo) validateUserPurchaseLimit(formats strfmt.Registry) error {

	if err := validate.Required("userPurchaseLimit", "body", m.UserPurchaseLimit); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ItemDynamicDataInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemDynamicDataInfo) UnmarshalBinary(b []byte) error {
	var res ItemDynamicDataInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
