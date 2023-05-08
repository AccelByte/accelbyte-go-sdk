// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsTicketMetricResultRecord Models ticket metric result record
//
// swagger:model Models ticket metric result record.
type ModelsTicketMetricResultRecord struct {

	// queue_time
	// Required: true
	// Format: int32
	QueueTime *int32 `json:"queue_time"`
}

// Validate validates this Models ticket metric result record
func (m *ModelsTicketMetricResultRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateQueueTime(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsTicketMetricResultRecord) validateQueueTime(formats strfmt.Registry) error {

	if err := validate.Required("queue_time", "body", m.QueueTime); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsTicketMetricResultRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsTicketMetricResultRecord) UnmarshalBinary(b []byte) error {
	var res ModelsTicketMetricResultRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
