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

// ApimodelsXRayCanceledMatchmakingTicketQueryResponse Apimodels X ray canceled matchmaking ticket query response
//
// swagger:model Apimodels X ray canceled matchmaking ticket query response.
type ApimodelsXRayCanceledMatchmakingTicketQueryResponse struct {

	// data
	// Required: true
	Data []*ApimodelsCanceledMatchmakingTicket `json:"data"`
}

// Validate validates this Apimodels X ray canceled matchmaking ticket query response
func (m *ApimodelsXRayCanceledMatchmakingTicketQueryResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayCanceledMatchmakingTicketQueryResponse) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayCanceledMatchmakingTicketQueryResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayCanceledMatchmakingTicketQueryResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayCanceledMatchmakingTicketQueryResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
