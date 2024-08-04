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

// ApimodelsXRayTicketResult Apimodels X ray ticket result
//
// swagger:model Apimodels X ray ticket result.
type ApimodelsXRayTicketResult struct {

	// elapsedtime
	// Required: true
	// Format: double
	ElapsedTime *float64 `json:"elapsedTime"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isbackfill
	IsBackfill bool `json:"isBackfill"`

	// ispivot
	IsPivot bool `json:"isPivot"`

	// matchpool
	// Required: true
	Matchpool *string `json:"matchpool"`

	// memberattributes
	MemberAttributes interface{} `json:"memberAttributes,omitempty"`

	// podname
	// Required: true
	PodName *string `json:"podName"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// region
	// Required: true
	Region *string `json:"region"`

	// tickid
	// Required: true
	TickID *string `json:"tickId"`

	// ticketid
	// Required: true
	TicketID *string `json:"ticketId"`

	// ticketstatus
	// Required: true
	TicketStatus *string `json:"ticketStatus"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`

	// totalplayers
	// Format: int32
	TotalPlayers int32 `json:"totalPlayers,omitempty"`
}

// Validate validates this Apimodels X ray ticket result
func (m *ApimodelsXRayTicketResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateElapsedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchpool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRegion(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicketStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayTicketResult) validateElapsedTime(formats strfmt.Registry) error {

	if err := validate.Required("elapsedTime", "body", m.ElapsedTime); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateMatchpool(formats strfmt.Registry) error {

	if err := validate.Required("matchpool", "body", m.Matchpool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateRegion(formats strfmt.Registry) error {

	if err := validate.Required("region", "body", m.Region); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateTickID(formats strfmt.Registry) error {

	if err := validate.Required("tickId", "body", m.TickID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateTicketID(formats strfmt.Registry) error {

	if err := validate.Required("ticketId", "body", m.TicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateTicketStatus(formats strfmt.Registry) error {

	if err := validate.Required("ticketStatus", "body", m.TicketStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayTicketResult) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayTicketResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayTicketResult) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayTicketResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
