// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsAppendTeamGameSessionRequest Apimodels append team game session request
//
// swagger:model Apimodels append team game session request.
type ApimodelsAppendTeamGameSessionRequest struct {

	// additionalmembers
	// Required: true
	AdditionalMembers []*ModelsPartyMembers `json:"additionalMembers"`

	// proposedteams
	// Required: true
	ProposedTeams []*ModelsTeam `json:"proposedTeams"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Apimodels append team game session request
func (m *ApimodelsAppendTeamGameSessionRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAdditionalMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProposedTeams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVersion(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsAppendTeamGameSessionRequest) validateAdditionalMembers(formats strfmt.Registry) error {

	if err := validate.Required("additionalMembers", "body", m.AdditionalMembers); err != nil {
		return err
	}

	for i := 0; i < len(m.AdditionalMembers); i++ {
		if swag.IsZero(m.AdditionalMembers[i]) { // not required
			continue
		}

		if m.AdditionalMembers[i] != nil {
			if err := m.AdditionalMembers[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("additionalMembers" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsAppendTeamGameSessionRequest) validateProposedTeams(formats strfmt.Registry) error {

	if err := validate.Required("proposedTeams", "body", m.ProposedTeams); err != nil {
		return err
	}

	for i := 0; i < len(m.ProposedTeams); i++ {
		if swag.IsZero(m.ProposedTeams[i]) { // not required
			continue
		}

		if m.ProposedTeams[i] != nil {
			if err := m.ProposedTeams[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("proposedTeams" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsAppendTeamGameSessionRequest) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsAppendTeamGameSessionRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsAppendTeamGameSessionRequest) UnmarshalBinary(b []byte) error {
	var res ApimodelsAppendTeamGameSessionRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
