// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// APIListMatchPoolTicketsResponse Api list match pool tickets response
//
// swagger:model Api list match pool tickets response.
type APIListMatchPoolTicketsResponse struct {

	// data
	// Required: true
	Data []*MatchmakerMatchTicketRecord `json:"data"`

	// pagination
	Pagination *ModelsPagination `json:"pagination,omitempty"`

	// totaldata
	// Required: true
	// Format: int32
	TotalData *int32 `json:"totalData"`
}

// Validate validates this Api list match pool tickets response
func (m *APIListMatchPoolTicketsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalData(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *APIListMatchPoolTicketsResponse) validateData(formats strfmt.Registry) error {

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

func (m *APIListMatchPoolTicketsResponse) validateTotalData(formats strfmt.Registry) error {

	if err := validate.Required("totalData", "body", m.TotalData); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *APIListMatchPoolTicketsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *APIListMatchPoolTicketsResponse) UnmarshalBinary(b []byte) error {
	var res APIListMatchPoolTicketsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
