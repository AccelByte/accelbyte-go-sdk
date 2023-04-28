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

// PlayStationMultiServiceLabelsReconcileRequest Play station multi service labels reconcile request
//
// swagger:model Play station multi service labels reconcile request.
type PlayStationMultiServiceLabelsReconcileRequest struct {

	// product price currency
	CurrencyCode string `json:"currencyCode,omitempty"`

	// product price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// productId
	ProductID string `json:"productId,omitempty"`

	// service labels
	// Unique: true
	// Format: int32
	ServiceLabels []int32 `json:"serviceLabels"`
}

// Validate validates this Play station multi service labels reconcile request
func (m *PlayStationMultiServiceLabelsReconcileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationMultiServiceLabelsReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationMultiServiceLabelsReconcileRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationMultiServiceLabelsReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
