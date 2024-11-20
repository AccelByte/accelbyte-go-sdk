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

// XblClawbackEventSubscriptionData Xbl clawback event subscription data
//
// swagger:model Xbl clawback event subscription data.
type XblClawbackEventSubscriptionData struct {

	// consumeddurationindays
	// Format: int32
	ConsumedDurationInDays int32 `json:"consumedDurationInDays,omitempty"`

	// datetime
	DateTime string `json:"dateTime,omitempty"`

	// durationindays
	// Format: int32
	DurationInDays int32 `json:"durationInDays,omitempty"`

	// recurrenceid
	RecurrenceID string `json:"recurrenceId,omitempty"`
}

// Validate validates this Xbl clawback event subscription data
func (m *XblClawbackEventSubscriptionData) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *XblClawbackEventSubscriptionData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *XblClawbackEventSubscriptionData) UnmarshalBinary(b []byte) error {
	var res XblClawbackEventSubscriptionData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
