// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsXRayBulkTicketObservabilityResponse Apimodels X ray bulk ticket observability response
//
// swagger:model Apimodels X ray bulk ticket observability response.
type ApimodelsXRayBulkTicketObservabilityResponse struct {

	// ticketids
	// Required: true
	TicketIDs []string `json:"ticketIDs"`
}

// Validate validates this Apimodels X ray bulk ticket observability response
func (m *ApimodelsXRayBulkTicketObservabilityResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTicketIDs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayBulkTicketObservabilityResponse) validateTicketIDs(formats strfmt.Registry) error {

	if err := validate.Required("ticketIDs", "body", m.TicketIDs); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayBulkTicketObservabilityResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayBulkTicketObservabilityResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayBulkTicketObservabilityResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
