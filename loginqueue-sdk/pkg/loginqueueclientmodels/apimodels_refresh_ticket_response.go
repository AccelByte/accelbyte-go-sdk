// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package loginqueueclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsRefreshTicketResponse Apimodels refresh ticket response
//
// swagger:model Apimodels refresh ticket response.
type ApimodelsRefreshTicketResponse struct {

	// cancel
	// Required: true
	Cancel *ApimodelsLink `json:"cancel"`

	// estimatedwaitingtimeinseconds
	// Required: true
	// Format: int32
	EstimatedWaitingTimeInSeconds *int32 `json:"estimatedWaitingTimeInSeconds"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// playerpollingtimeinseconds
	// Required: true
	// Format: int32
	PlayerPollingTimeInSeconds *int32 `json:"playerPollingTimeInSeconds"`

	// position
	// Required: true
	// Format: int32
	Position *int32 `json:"position"`

	// reconnectexpiredat
	// Required: true
	// Format: int64
	ReconnectExpiredAt *int64 `json:"reconnectExpiredAt"`
}

// Validate validates this Apimodels refresh ticket response
func (m *ApimodelsRefreshTicketResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCancel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEstimatedWaitingTimeInSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlayerPollingTimeInSeconds(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePosition(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReconnectExpiredAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsRefreshTicketResponse) validateCancel(formats strfmt.Registry) error {

	if err := validate.Required("cancel", "body", m.Cancel); err != nil {
		return err
	}

	if m.Cancel != nil {
		if err := m.Cancel.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("cancel")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelsRefreshTicketResponse) validateEstimatedWaitingTimeInSeconds(formats strfmt.Registry) error {

	if err := validate.Required("estimatedWaitingTimeInSeconds", "body", m.EstimatedWaitingTimeInSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRefreshTicketResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRefreshTicketResponse) validatePlayerPollingTimeInSeconds(formats strfmt.Registry) error {

	if err := validate.Required("playerPollingTimeInSeconds", "body", m.PlayerPollingTimeInSeconds); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRefreshTicketResponse) validatePosition(formats strfmt.Registry) error {

	if err := validate.Required("position", "body", m.Position); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsRefreshTicketResponse) validateReconnectExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("reconnectExpiredAt", "body", m.ReconnectExpiredAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsRefreshTicketResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsRefreshTicketResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsRefreshTicketResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
