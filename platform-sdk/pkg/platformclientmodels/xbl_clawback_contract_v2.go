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

// XblClawbackContractV2 Xbl clawback contract V2
//
// swagger:model Xbl clawback contract V2.
type XblClawbackContractV2 struct {

	// eventdate
	EventDate string `json:"eventDate,omitempty"`

	// eventstate
	// Required: true
	EventState *string `json:"eventState"`

	// lineitemid
	// Required: true
	LineItemID *string `json:"lineItemId"`

	// orderid
	// Required: true
	OrderID *string `json:"orderId"`

	// productid
	// Required: true
	ProductID *string `json:"productId"`

	// producttype
	ProductType string `json:"productType,omitempty"`

	// purchaseddate
	PurchasedDate string `json:"purchasedDate,omitempty"`

	// sandboxid
	SandboxID string `json:"sandboxId,omitempty"`

	// skuid
	SkuID string `json:"skuId,omitempty"`

	// subscriptiondata
	SubscriptionData *XblClawbackEventSubscriptionData `json:"subscriptionData,omitempty"`
}

// Validate validates this Xbl clawback contract V2
func (m *XblClawbackContractV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateEventState(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLineItemID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOrderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProductID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *XblClawbackContractV2) validateEventState(formats strfmt.Registry) error {

	if err := validate.Required("eventState", "body", m.EventState); err != nil {
		return err
	}

	return nil
}

func (m *XblClawbackContractV2) validateLineItemID(formats strfmt.Registry) error {

	if err := validate.Required("lineItemId", "body", m.LineItemID); err != nil {
		return err
	}

	return nil
}

func (m *XblClawbackContractV2) validateOrderID(formats strfmt.Registry) error {

	if err := validate.Required("orderId", "body", m.OrderID); err != nil {
		return err
	}

	return nil
}

func (m *XblClawbackContractV2) validateProductID(formats strfmt.Registry) error {

	if err := validate.Required("productId", "body", m.ProductID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *XblClawbackContractV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblClawbackContractV2) UnmarshalBinary(b []byte) error {
	var res XblClawbackContractV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
