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

// StreamEventBody Stream event body
//
// swagger:model Stream event body.
type StreamEventBody struct {

	// account
	Account string `json:"account,omitempty"`

	// additionaldata
	AdditionalData *EventAdditionalData `json:"additionalData,omitempty"`

	// originaltitlename
	OriginalTitleName string `json:"originalTitleName,omitempty"`

	// paymentproductsku
	PaymentProductSKU string `json:"paymentProductSKU,omitempty"`

	// purchasedate
	PurchaseDate string `json:"purchaseDate,omitempty"`

	// sourceorderitemid
	SourceOrderItemID string `json:"sourceOrderItemId,omitempty"`

	// titlename
	TitleName string `json:"titleName,omitempty"`
}

// Validate validates this Stream event body
func (m *StreamEventBody) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StreamEventBody) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StreamEventBody) UnmarshalBinary(b []byte) error {
	var res StreamEventBody
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
