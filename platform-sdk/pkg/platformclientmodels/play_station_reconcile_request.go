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

// PlayStationReconcileRequest Play station reconcile request
//
// swagger:model Play station reconcile request.
type PlayStationReconcileRequest struct {

	// product price currency
	CurrencyCode string `json:"currencyCode,omitempty"`

	// product price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// productId
	ProductID string `json:"productId,omitempty"`

	// service label
	// Format: int32
	ServiceLabel int32 `json:"serviceLabel,omitempty"`
}

// Validate validates this Play station reconcile request
func (m *PlayStationReconcileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *PlayStationReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PlayStationReconcileRequest) UnmarshalBinary(b []byte) error {
	var res PlayStationReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
