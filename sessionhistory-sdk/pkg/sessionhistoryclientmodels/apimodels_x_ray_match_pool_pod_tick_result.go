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

// ApimodelsXRayMatchPoolPodTickResult Apimodels X ray match pool pod tick result
//
// swagger:model Apimodels X ray match pool pod tick result.
type ApimodelsXRayMatchPoolPodTickResult struct {

	// podname
	// Required: true
	PodName *string `json:"podName"`

	// tickid
	// Required: true
	TickID *string `json:"tickId"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`

	// totalmatchbackfilled
	// Required: true
	// Format: int32
	TotalMatchBackfilled *int32 `json:"totalMatchBackfilled"`

	// totalmatchcreated
	// Required: true
	// Format: int32
	TotalMatchCreated *int32 `json:"totalMatchCreated"`

	// totalmatchtobackfill
	// Required: true
	// Format: int32
	TotalMatchToBackfill *int32 `json:"totalMatchToBackfill"`

	// totalticketbackfilled
	// Required: true
	// Format: int32
	TotalTicketBackfilled *int32 `json:"totalTicketBackfilled"`

	// totalticketforbackfill
	// Required: true
	// Format: int32
	TotalTicketForBackfill *int32 `json:"totalTicketForBackfill"`

	// totalticketformatch
	// Required: true
	// Format: int32
	TotalTicketForMatch *int32 `json:"totalTicketForMatch"`

	// totalticketinqueue
	// Required: true
	// Format: int32
	TotalTicketInQueue *int32 `json:"totalTicketInQueue"`

	// totalticketmatched
	// Required: true
	// Format: int32
	TotalTicketMatched *int32 `json:"totalTicketMatched"`
}

// Validate validates this Apimodels X ray match pool pod tick result
func (m *ApimodelsXRayMatchPoolPodTickResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTickID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalMatchBackfilled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalMatchCreated(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalMatchToBackfill(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTicketBackfilled(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTicketForBackfill(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTicketForMatch(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTicketInQueue(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTotalTicketMatched(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTickID(formats strfmt.Registry) error {

	if err := validate.Required("tickId", "body", m.TickID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalMatchBackfilled(formats strfmt.Registry) error {

	if err := validate.Required("totalMatchBackfilled", "body", m.TotalMatchBackfilled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalMatchCreated(formats strfmt.Registry) error {

	if err := validate.Required("totalMatchCreated", "body", m.TotalMatchCreated); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalMatchToBackfill(formats strfmt.Registry) error {

	if err := validate.Required("totalMatchToBackfill", "body", m.TotalMatchToBackfill); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalTicketBackfilled(formats strfmt.Registry) error {

	if err := validate.Required("totalTicketBackfilled", "body", m.TotalTicketBackfilled); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalTicketForBackfill(formats strfmt.Registry) error {

	if err := validate.Required("totalTicketForBackfill", "body", m.TotalTicketForBackfill); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalTicketForMatch(formats strfmt.Registry) error {

	if err := validate.Required("totalTicketForMatch", "body", m.TotalTicketForMatch); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalTicketInQueue(formats strfmt.Registry) error {

	if err := validate.Required("totalTicketInQueue", "body", m.TotalTicketInQueue); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsXRayMatchPoolPodTickResult) validateTotalTicketMatched(formats strfmt.Registry) error {

	if err := validate.Required("totalTicketMatched", "body", m.TotalTicketMatched); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsXRayMatchPoolPodTickResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsXRayMatchPoolPodTickResult) UnmarshalBinary(b []byte) error {
	var res ApimodelsXRayMatchPoolPodTickResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
