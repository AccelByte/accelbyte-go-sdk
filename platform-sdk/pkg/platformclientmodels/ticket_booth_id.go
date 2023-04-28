// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// TicketBoothID Ticket booth ID
//
// swagger:model Ticket booth ID.
type TicketBoothID struct {

	// id
	// Required: true
	ID *string `json:"id"`

	// type
	// Enum: ['CAMPAIGN', 'KEYGROUP']
	// Required: true
	Type *string `json:"type"`
}

// Validate validates this Ticket booth ID
func (m *TicketBoothID) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *TicketBoothID) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

var ticketBoothIdTypeTypePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "KEYGROUP"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		ticketBoothIdTypeTypePropEnum = append(ticketBoothIdTypeTypePropEnum, v)
	}
}

const (

	// TicketBoothIDTypeCAMPAIGN captures enum value "CAMPAIGN"
	TicketBoothIDTypeCAMPAIGN string = "CAMPAIGN"

	// TicketBoothIDTypeKEYGROUP captures enum value "KEYGROUP"
	TicketBoothIDTypeKEYGROUP string = "KEYGROUP"
)

// prop value enum
func (m *TicketBoothID) validateTypeEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, ticketBoothIdTypeTypePropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *TicketBoothID) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	// value enum
	if err := m.validateTypeEnum("type", "body", *m.Type); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *TicketBoothID) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *TicketBoothID) UnmarshalBinary(b []byte) error {
	var res TicketBoothID
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
