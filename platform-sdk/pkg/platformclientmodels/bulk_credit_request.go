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

// BulkCreditRequest Bulk credit request
//
// swagger:model Bulk credit request.
type BulkCreditRequest struct {

	// creditrequest
	CreditRequest *CreditRequest `json:"creditRequest,omitempty"`

	// currencycode
	CurrencyCode string `json:"currencyCode,omitempty"`

	// userids
	// Unique: true
	UserIds []string `json:"userIds"`
}

// Validate validates this Bulk credit request
func (m *BulkCreditRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *BulkCreditRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *BulkCreditRequest) UnmarshalBinary(b []byte) error {
	var res BulkCreditRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
