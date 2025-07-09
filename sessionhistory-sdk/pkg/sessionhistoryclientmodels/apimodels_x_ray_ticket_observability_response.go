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

// ApimodelsXRayTicketObservabilityResponse Apimodels X ray ticket observability response
//
// swagger:model Apimodels X ray ticket observability response.
type ApimodelsXRayTicketObservabilityResponse struct {

	// ticketid
	// Required: true
	TicketID *string `json:"ticketID"`
}

// Validate validates this Apimodels X ray ticket observability response
func (m *ApimodelsXRayTicketObservabilityResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayTicketObservabilityResponse) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketID", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayTicketObservabilityResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayTicketObservabilityResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayTicketObservabilityResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
