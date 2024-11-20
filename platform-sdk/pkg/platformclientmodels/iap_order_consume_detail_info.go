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

// IAPOrderConsumeDetailInfo IAP order consume detail info
//
// swagger:model IAP order consume detail info.
type IAPOrderConsumeDetailInfo struct {

	// correlationId
	CorrelationID string `json:"correlationId,omitempty"`

	// iapOrderNo
	IAPOrderNo string `json:"iapOrderNo,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// itemId
	ItemID string `json:"itemId,omitempty"`

	// itemSku
	ItemSku string `json:"itemSku,omitempty"`

	// lineItemOrderId
	LineItemOrderID string `json:"lineItemOrderId,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// orderId
	OrderID string `json:"orderId,omitempty"`

	// platform
	Platform string `json:"platform,omitempty"`

	// productId
	ProductID string `json:"productId,omitempty"`

	// quantityConsumed
	// Format: int32
	QuantityConsumed int32 `json:"quantityConsumed,omitempty"`

	// quantityRevoked
	// Format: int32
	QuantityRevoked int32 `json:"quantityRevoked,omitempty"`

	// status
	// Enum: ['FULFILLED', 'RECONNECTED', 'REVOKED']
	Status string `json:"status,omitempty"`

	// userId
	UserID string `json:"userId,omitempty"`
}

// Validate validates this IAP order consume detail info
func (m *IAPOrderConsumeDetailInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var iapOrderConsumeDetailInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FULFILLED", "RECONNECTED", "REVOKED"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		iapOrderConsumeDetailInfoTypeStatusPropEnum = append(iapOrderConsumeDetailInfoTypeStatusPropEnum, v)
	}
}

const (

	// IAPOrderConsumeDetailInfoStatusFULFILLED captures enum value "FULFILLED"
	IAPOrderConsumeDetailInfoStatusFULFILLED string = "FULFILLED"

	// IAPOrderConsumeDetailInfoStatusRECONNECTED captures enum value "RECONNECTED"
	IAPOrderConsumeDetailInfoStatusRECONNECTED string = "RECONNECTED"

	// IAPOrderConsumeDetailInfoStatusREVOKED captures enum value "REVOKED"
	IAPOrderConsumeDetailInfoStatusREVOKED string = "REVOKED"
)

// prop value enum
func (m *IAPOrderConsumeDetailInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, iapOrderConsumeDetailInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *IAPOrderConsumeDetailInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *IAPOrderConsumeDetailInfo) UnmarshalBinary(b []byte) error {
	var res IAPOrderConsumeDetailInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
