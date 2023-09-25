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

// StreamEvent Stream event
//
// swagger:model Stream event.
type StreamEvent struct {

	// body
	Body *StreamEventBody `json:"body,omitempty"`

	// eventdomain
	EventDomain string `json:"eventDomain,omitempty"`

	// eventsource
	EventSource string `json:"eventSource,omitempty"`

	// eventtype
	EventType string `json:"eventType,omitempty"`

	// eventversion
	// Format: int32
	EventVersion int32 `json:"eventVersion,omitempty"`

	// id
	ID string `json:"id,omitempty"`

	// timestamp
	Timestamp string `json:"timestamp,omitempty"`
}

// Validate validates this Stream event
func (m *StreamEvent) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *StreamEvent) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *StreamEvent) UnmarshalBinary(b []byte) error {
	var res StreamEvent
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
