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

// ModelLinkRequest Model link request
//
// swagger:model Model link request.
type ModelLinkRequest struct {

	// client_id
	// Required: true
	ClientID *string `json:"client_id"`

	// conflict_publisher_user_id
	ConflictPublisherUserID string `json:"conflict_publisher_user_id,omitempty"`

	// conflict_user_linked_games
	ConflictUserLinkedGames []string `json:"conflict_user_linked_games,omitempty"`

	// current_user_linked_games
	CurrentUserLinkedGames []string `json:"current_user_linked_games,omitempty"`

	// error
	Error *RestErrorResponseWithConflictedUserPlatformAccounts `json:"error,omitempty"`

	// expiration
	// Format: int32
	Expiration int32 `json:"expiration,omitempty"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// operation_name
	// Required: true
	OperationName *string `json:"operation_name"`

	// payload
	// Required: true
	Payload interface{} `json:"payload"`

	// platformdisplayname
	PlatformDisplayName string `json:"platformDisplayName,omitempty"`

	// platformid
	PlatformID string `json:"platformID,omitempty"`

	// platform_user_id
	PlatformUserID string `json:"platform_user_id,omitempty"`

	// redirect_uri
	// Required: true
	RedirectURI *string `json:"redirect_uri"`

	// refreshtoken
	RefreshToken string `json:"refreshToken,omitempty"`

	// request_id
	// Required: true
	RequestID *string `json:"request_id"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Model link request
func (m *ModelLinkRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateClientID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOperationName(formats); err != nil {
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

func (m *ModelLinkRequest) validateClientID(formats strfmt.Registry) error {

	if err := validate.Required("client_id", "body", m.ClientID); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequest) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequest) validateOperationName(formats strfmt.Registry) error {

	if err := validate.Required("operation_name", "body", m.OperationName); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequest) validateRedirectURI(formats strfmt.Registry) error {

	if err := validate.Required("redirect_uri", "body", m.RedirectURI); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequest) validateRequestID(formats strfmt.Registry) error {

	if err := validate.Required("request_id", "body", m.RequestID); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkRequest) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkRequest) UnmarshalBinary(b []byte) error {
	var res ModelLinkRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
