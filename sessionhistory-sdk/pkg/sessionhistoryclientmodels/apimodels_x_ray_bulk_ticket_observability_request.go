// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsXRayBulkTicketObservabilityRequest Apimodels X ray bulk ticket observability request
//
// swagger:model Apimodels X ray bulk ticket observability request.
type ApimodelsXRayBulkTicketObservabilityRequest struct {

	// ticketobservabilities
	// Required: true
	TicketObservabilities []*ApimodelsXRayTicketObservabilityRequest `json:"ticketObservabilities"`
}

// Validate validates this Apimodels X ray bulk ticket observability request
func (m *ApimodelsXRayBulkTicketObservabilityRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateTicketObservabilities(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayBulkTicketObservabilityRequest) validateTicketObservabilities(formats strfmt.Registry) error {

	if err := validate.Required("ticketObservabilities", "body", m.TicketObservabilities); err != nil {
		return err
	}

	for i := 0; i < len(m.TicketObservabilities); i++ {
		if swag.IsZero(m.TicketObservabilities[i]) { // not required
			continue
		}

		if m.TicketObservabilities[i] != nil {
			if err := m.TicketObservabilities[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("ticketObservabilities" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayBulkTicketObservabilityRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayBulkTicketObservabilityRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayBulkTicketObservabilityRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
