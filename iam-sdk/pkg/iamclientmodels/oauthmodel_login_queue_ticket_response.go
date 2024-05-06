// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// OauthmodelLoginQueueTicketResponse Oauthmodel login queue ticket response
//
// swagger:model Oauthmodel login queue ticket response.
type OauthmodelLoginQueueTicketResponse struct {

	// cancel
	// Required: true
	Cancel *OauthmodelTicketEndpointAction `json:"cancel"`

	// estimatedwaitingtimeinseconds
	// Required: true
	// Format: int32
	EstimatedWaitingTimeInSeconds *int32 `json:"estimatedWaitingTimeInSeconds"`

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

	// refresh
	// Required: true
	Refresh *OauthmodelTicketEndpointAction `json:"refresh"`

	// ticket
	// Required: true
	Ticket *string `json:"ticket"`
}

// Validate validates this Oauthmodel login queue ticket response
func (m *OauthmodelLoginQueueTicketResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCancel(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEstimatedWaitingTimeInSeconds(formats); err != nil {
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
	if err := m.validateRefresh(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTicket(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validateCancel(formats strfmt.Registry) error {

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

func (m *OauthmodelLoginQueueTicketResponse) validateEstimatedWaitingTimeInSeconds(formats strfmt.Registry) error {

	if err := validate.Required("estimatedWaitingTimeInSeconds", "body", m.EstimatedWaitingTimeInSeconds); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validatePlayerPollingTimeInSeconds(formats strfmt.Registry) error {

	if err := validate.Required("playerPollingTimeInSeconds", "body", m.PlayerPollingTimeInSeconds); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validatePosition(formats strfmt.Registry) error {

	if err := validate.Required("position", "body", m.Position); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validateReconnectExpiredAt(formats strfmt.Registry) error {

	if err := validate.Required("reconnectExpiredAt", "body", m.ReconnectExpiredAt); err != nil {
		return err
	}

	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validateRefresh(formats strfmt.Registry) error {

	if err := validate.Required("refresh", "body", m.Refresh); err != nil {
		return err
	}

	if m.Refresh != nil {
		if err := m.Refresh.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("refresh")
			}
			return err
		}
	}

	return nil
}

func (m *OauthmodelLoginQueueTicketResponse) validateTicket(formats strfmt.Registry) error {

	if err := validate.Required("ticket", "body", m.Ticket); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *OauthmodelLoginQueueTicketResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *OauthmodelLoginQueueTicketResponse) UnmarshalBinary(b []byte) error {
	var res OauthmodelLoginQueueTicketResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
