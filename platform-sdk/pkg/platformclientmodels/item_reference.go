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

// ItemReference Item reference
//
// swagger:model Item reference.
type ItemReference struct {

	// coderedemptionid
	CodeRedemptionID string `json:"codeRedemptionId,omitempty"`

	// conditionname
	ConditionName string `json:"conditionName,omitempty"`

	// dlcid
	DLCID string `json:"dlcId,omitempty"`

	// itemid
	ItemID string `json:"itemId,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// platform
	Platform string `json:"platform,omitempty"`

	// platformproductid
	PlatformProductID string `json:"platformProductId,omitempty"`

	// referenceid
	ReferenceID string `json:"referenceId,omitempty"`

	// rewardcode
	RewardCode string `json:"rewardCode,omitempty"`

	// storeid
	StoreID string `json:"storeId,omitempty"`
}

// Validate validates this Item reference
func (m *ItemReference) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ItemReference) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ItemReference) UnmarshalBinary(b []byte) error {
	var res ItemReference
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
