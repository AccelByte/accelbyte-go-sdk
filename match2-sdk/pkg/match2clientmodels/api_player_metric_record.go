// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIPlayerMetricRecord Api player metric record
//
// swagger:model Api player metric record.
type APIPlayerMetricRecord struct {

	// playerinqueue
	// Required: true
	// Format: int32
	PlayerInQueue *int32 `json:"playerInQueue"`
}

// Validate validates this Api player metric record
func (m *APIPlayerMetricRecord) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePlayerInQueue(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIPlayerMetricRecord) validatePlayerInQueue(formats strfmt.Registry) error {

	if err := validate.Required("playerInQueue", "body", m.PlayerInQueue); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIPlayerMetricRecord) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIPlayerMetricRecord) UnmarshalBinary(b []byte) error {
	var res APIPlayerMetricRecord
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
