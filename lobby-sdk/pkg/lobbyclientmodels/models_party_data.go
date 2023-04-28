// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsPartyData Models party data
//
// swagger:model Models party data.
type ModelsPartyData struct {

	// custom_attribute
	// Required: true
	CustomAttribute interface{} `json:"custom_attribute"`

	// invitees
	// Required: true
	Invitees []string `json:"invitees"`

	// leader
	// Required: true
	Leader *string `json:"leader"`

	// members
	// Required: true
	Members []string `json:"members"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// partyid
	// Required: true
	PartyID *string `json:"partyId"`

	// updatedat
	// Required: true
	// Format: int64
	UpdatedAt *int64 `json:"updatedAt"`
}

// Validate validates this Models party data
func (m *ModelsPartyData) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateInvitees(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeader(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsPartyData) validateInvitees(formats strfmt.Registry) error {

	if err := validate.Required("invitees", "body", m.Invitees); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyData) validateLeader(formats strfmt.Registry) error {

	if err := validate.Required("leader", "body", m.Leader); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyData) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("members", "body", m.Members); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyData) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyData) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("partyId", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsPartyData) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsPartyData) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsPartyData) UnmarshalBinary(b []byte) error {
	var res ModelsPartyData
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
