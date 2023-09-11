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

// FulfillmentResult Fulfillment result
//
// swagger:model Fulfillment result.
type FulfillmentResult struct {

	// credit granted
	CreditSummaries []*CreditSummary `json:"creditSummaries,omitempty"`

	// entitlement granted
	EntitlementSummaries []*EntitlementSummary `json:"entitlementSummaries,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// affected subscriptions
	SubscriptionSummaries []*SubscriptionSummary `json:"subscriptionSummaries,omitempty"`

	// userId
	// Required: true
	UserID *string `json:"userId"`
}

// Validate validates this Fulfillment result
func (m *FulfillmentResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *FulfillmentResult) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *FulfillmentResult) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("userId", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *FulfillmentResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FulfillmentResult) UnmarshalBinary(b []byte) error {
	var res FulfillmentResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
