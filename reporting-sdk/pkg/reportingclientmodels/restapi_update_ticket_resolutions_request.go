// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiUpdateTicketResolutionsRequest Restapi update ticket resolutions request
//
// swagger:model Restapi update ticket resolutions request.
type RestapiUpdateTicketResolutionsRequest struct {

	// Info regarding the resolution status, max 280 chars
	// Required: true
	Notes *string `json:"notes"`

	// Ticket status is open, closed, auto moderated
	// Enum: ['AUTO_MODERATED', 'CLOSED', 'OPEN', 'UNKNOWN']
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Restapi update ticket resolutions request
func (m *RestapiUpdateTicketResolutionsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNotes(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiUpdateTicketResolutionsRequest) validateNotes(formats strfmt.Registry) error {

	if err := validate.Required("notes", "body", m.Notes); err != nil {
		return err
	}

	return nil
}

var restapiUpdateTicketResolutionsRequestTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["AUTO_MODERATED", "CLOSED", "OPEN", "UNKNOWN"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiUpdateTicketResolutionsRequestTypeStatusPropEnum = append(restapiUpdateTicketResolutionsRequestTypeStatusPropEnum, v)
	}
}

const (

	// RestapiUpdateTicketResolutionsRequestStatusAUTOMODERATED captures enum value "AUTO_MODERATED"
	RestapiUpdateTicketResolutionsRequestStatusAUTOMODERATED string = "AUTO_MODERATED"

	// RestapiUpdateTicketResolutionsRequestStatusCLOSED captures enum value "CLOSED"
	RestapiUpdateTicketResolutionsRequestStatusCLOSED string = "CLOSED"

	// RestapiUpdateTicketResolutionsRequestStatusOPEN captures enum value "OPEN"
	RestapiUpdateTicketResolutionsRequestStatusOPEN string = "OPEN"

	// RestapiUpdateTicketResolutionsRequestStatusUNKNOWN captures enum value "UNKNOWN"
	RestapiUpdateTicketResolutionsRequestStatusUNKNOWN string = "UNKNOWN"
)

// prop value enum
func (m *RestapiUpdateTicketResolutionsRequest) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiUpdateTicketResolutionsRequestTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiUpdateTicketResolutionsRequest) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	// value enum
	if err := m.validateStatusEnum("status", "body", *m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiUpdateTicketResolutionsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiUpdateTicketResolutionsRequest) UnmarshalBinary(b []byte) error {
	var res RestapiUpdateTicketResolutionsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
