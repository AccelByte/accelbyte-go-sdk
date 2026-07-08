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

// ModelLinkRequestResponse Model link request response
//
// swagger:model Model link request response.
type ModelLinkRequestResponse struct {

	// clientid
	// Required: true
	ClientID *string `json:"clientId"`

	// conflictpublisheruserid
	ConflictPublisherUserID string `json:"conflictPublisherUserId,omitempty"`

	// conflictuserlinkedgames
	ConflictUserLinkedGames []string `json:"conflictUserLinkedGames,omitempty"`

	// currentuserlinkedgames
	CurrentUserLinkedGames []string `json:"currentUserLinkedGames,omitempty"`

	// error
	Error *RestErrorResponseWithConflictedUserPlatformAccounts `json:"error,omitempty"`

	// expiration
	// Format: int32
	Expiration int32 `json:"expiration,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// payload
	// Required: true
	Payload interface{} `json:"payload"`

	// platformdisplayname
	PlatformDisplayName string `json:"platformDisplayName,omitempty"`

	// platformid
	PlatformID string `json:"platformId,omitempty"`

	// platformuserid
	PlatformUserID string `json:"platformUserId,omitempty"`

	// redirecturi
	// Required: true
	RedirectURI *string `json:"redirectUri"`

	// requestid
	// Required: true
	RequestID *string `json:"requestId"`

	// Enum: SUCCESS, PENDING, FAILED
	// Required: true
	Status *string `json:"status"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Model link request response
func (m *ModelLinkRequestResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRedirectURI(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateRequestID(formats); err != nil {
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

func (m *ModelLinkRequestResponse) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("clientId", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequestResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequestResponse) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirectUri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequestResponse) validateRequestID(formats strfmt.Registry) error {

	if err := validate.Required("requestId", "body", m.RequestID); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequestResponse) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkRequestResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkRequestResponse) UnmarshalBinary(b []byte) error {
	var res ModelLinkRequestResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
