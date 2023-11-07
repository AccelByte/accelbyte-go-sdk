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

// TradeChainedActionCommitRequest Trade chained action commit request
//
// swagger:model Trade chained action commit request.
type TradeChainedActionCommitRequest struct {

	// actions
	Actions []*ActionRequest `json:"actions,omitempty"`

	// metadata
	Metadata interface{} `json:"metadata,omitempty"`

	// needprecheck
	NeedPreCheck bool `json:"needPreCheck"`

	// transactionid
	TransactionID string `json:"transactionId,omitempty"`

	// type
	Type string `json:"type,omitempty"`
}

// Validate validates this Trade chained action commit request
func (m *TradeChainedActionCommitRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *TradeChainedActionCommitRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TradeChainedActionCommitRequest) UnmarshalBinary(b []byte) error {
	var res TradeChainedActionCommitRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
