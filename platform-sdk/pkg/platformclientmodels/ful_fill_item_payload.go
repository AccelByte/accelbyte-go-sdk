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

// FulFillItemPayload Ful fill item payload
//
// swagger:model Ful fill item payload.
type FulFillItemPayload struct {

	// count
	// Required: true
	// Format: int32
	Count *int32 `json:"count"`

	// itemidentity
	// Required: true
	ItemIdentity *string `json:"itemIdentity"`

	// itemidentitytype
	// Enum: ['ITEM_ID', 'ITEM_SKU']
	// Required: true
	ItemIdentityType *string `json:"itemIdentityType"`
}

// Validate validates this Ful fill item payload
func (m *FulFillItemPayload) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCount(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemIdentity(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateItemIdentityType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FulFillItemPayload) validateCount(formats strfmt.Registry) error {

	if err := validate.Required("count", "body", m.Count); err != nil {
		return err
	}

	return nil
}

func (m *FulFillItemPayload) validateItemIdentity(formats strfmt.Registry) error {

	if err := validate.Required("itemIdentity", "body", m.ItemIdentity); err != nil {
		return err
	}

	return nil
}

var fulFillItemPayloadTypeItemIdentityTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["ITEM_ID", "ITEM_SKU"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		fulFillItemPayloadTypeItemIdentityTypePropEnum = append(fulFillItemPayloadTypeItemIdentityTypePropEnum, v)
	}
}

const (

	// FulFillItemPayloadItemIdentityTypeITEMID captures enum value "ITEM_ID"
	FulFillItemPayloadItemIdentityTypeITEMID string = "ITEM_ID"

	// FulFillItemPayloadItemIdentityTypeITEMSKU captures enum value "ITEM_SKU"
	FulFillItemPayloadItemIdentityTypeITEMSKU string = "ITEM_SKU"
)

// prop value enum
func (m *FulFillItemPayload) validateItemIdentityTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, fulFillItemPayloadTypeItemIdentityTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *FulFillItemPayload) validateItemIdentityType(formats strfmt.Registry) error {

	if err := validate.Required("itemIdentityType", "body", m.ItemIdentityType); err != nil {
		return err
	}

	// value enum
	if err := m.validateItemIdentityTypeEnum("itemIdentityType", "body", *m.ItemIdentityType); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulFillItemPayload) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulFillItemPayload) UnmarshalBinary(b []byte) error {
	var res FulFillItemPayload
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
