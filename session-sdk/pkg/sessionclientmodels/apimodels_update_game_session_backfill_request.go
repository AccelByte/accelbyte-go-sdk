// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsUpdateGameSessionBackfillRequest Apimodels update game session backfill request
//
// swagger:model Apimodels update game session backfill request.
type ApimodelsUpdateGameSessionBackfillRequest struct {

	// backfillticketid
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`
}

// Validate validates this Apimodels update game session backfill request
func (m *ApimodelsUpdateGameSessionBackfillRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBackfillTicketID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsUpdateGameSessionBackfillRequest) validateBackfillTicketID(formats strfmt.Registry) error {

	if err := validate.Required("backfillTicketID", "body", m.BackfillTicketID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionBackfillRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsUpdateGameSessionBackfillRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsUpdateGameSessionBackfillRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
