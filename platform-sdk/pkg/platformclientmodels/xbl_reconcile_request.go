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

// XblReconcileRequest Xbl reconcile request
//
// swagger:model Xbl reconcile request.
type XblReconcileRequest struct {

	// product price currency
	CurrencyCode string `json:"currencyCode,omitempty"`

	// product price
	// Format: double
	Price float64 `json:"price,omitempty"`

	// productId
	ProductID string `json:"productId,omitempty"`

	// xstsToken
	XstsToken string `json:"xstsToken,omitempty"`
}

// Validate validates this Xbl reconcile request
func (m *XblReconcileRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblReconcileRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblReconcileRequest) UnmarshalBinary(b []byte) error {
	var res XblReconcileRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
