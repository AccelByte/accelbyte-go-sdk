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

// ModelUserPlatformLinkHistory Model user platform link history
//
// swagger:model Model user platform link history.
type ModelUserPlatformLinkHistory struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// actor
	// Required: true
	Actor *string `json:"actor"`

	// actortype
	// Required: true
	ActorType *string `json:"actorType"`

	// createdat
	// Required: true
	// Format: int64
	CreatedAt *int64 `json:"createdAt"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// platform
	// Required: true
	Platform *string `json:"platform"`

	// platformdisplayname
	// Required: true
	PlatformDisplayName *string `json:"platformDisplayName"`

	// platformid
	// Required: true
	PlatformID *string `json:"platformId"`

	// platformuserid
	// Required: true
	PlatformUserID *string `json:"platformUserId"`

	// publisheruserid
	// Required: true
	PublisherUserID *string `json:"publisherUserId"`
}

// Validate validates this Model user platform link history
func (m *ModelUserPlatformLinkHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateActor(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateActorType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatform(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformDisplayName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePlatformUserID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePublisherUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelUserPlatformLinkHistory) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validateActor(formats strfmt.Registry) error {

	if err := validate.Required("actor", "body", m.Actor); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validateActorType(formats strfmt.Registry) error {

	if err := validate.Required("actorType", "body", m.ActorType); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validatePlatform(formats strfmt.Registry) error {

	if err := validate.Required("platform", "body", m.Platform); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validatePlatformDisplayName(formats strfmt.Registry) error {

	if err := validate.Required("platformDisplayName", "body", m.PlatformDisplayName); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validatePlatformID(formats strfmt.Registry) error {

	if err := validate.Required("platformId", "body", m.PlatformID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validatePlatformUserID(formats strfmt.Registry) error {

	if err := validate.Required("platformUserId", "body", m.PlatformUserID); err != nil {
		return err
	}

	return nil
}

func (m *ModelUserPlatformLinkHistory) validatePublisherUserID(formats strfmt.Registry) error {

	if err := validate.Required("publisherUserId", "body", m.PublisherUserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelUserPlatformLinkHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelUserPlatformLinkHistory) UnmarshalBinary(b []byte) error {
	var res ModelUserPlatformLinkHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
