// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ItemPurchaseConditionValidateResult Item purchase condition validate result
//
// swagger:model Item purchase condition validate result.
type ItemPurchaseConditionValidateResult struct {

	// item id
	ItemID string `json:"itemId,omitempty"`

	// purchasable
	Purchasable bool `json:"purchasable"`

	// item sku
	Sku string `json:"sku,omitempty"`

	// validate details: list of condition group validate result. index is same as purchase condition group.
	ValidateDetails []*ConditionGroupValidateResult `json:"validateDetails,omitempty"`
}

// Validate validates this Item purchase condition validate result
func (m *ItemPurchaseConditionValidateResult) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemPurchaseConditionValidateResult) UnmarshalBinary(b []byte) error {
	var res ItemPurchaseConditionValidateResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
