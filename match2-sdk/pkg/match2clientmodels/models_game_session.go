// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package match2clientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsGameSession Models game session
//
// swagger:model Models game session.
type ModelsGameSession struct {

	// dsinformation
	// Required: true
	DSInformation *ModelsDSInformation `json:"DSInformation"`

	// gamemode
	// Required: true
	GameMode *string `json:"GameMode"`

	// isfull
	// Required: true
	IsFull *bool `json:"IsFull"`

	// jointype
	// Required: true
	JoinType *string `json:"JoinType"`

	// members
	// Required: true
	Members []*ModelsUser `json:"Members"`

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// backfillticketid
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`

	// configuration
	// Required: true
	Configuration *ModelsConfiguration `json:"configuration"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// id
	// Required: true
	ID *string `json:"id"`

	// leaderid
	// Required: true
	LeaderID *string `json:"leaderID"`

	// matchpool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// teams
	// Required: true
	Teams []*MatchmakerTeam `json:"teams"`

	// updatedat
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updatedAt"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Models game session
func (m *ModelsGameSession) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDSInformation(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateIsFull(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateBackfillTicketID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateConfiguration(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLeaderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTeams(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateUpdatedAt(formats); err != nil {
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

func (m *ModelsGameSession) validateDSInformation(formats strfmt.Registry) error {

	if err := validate.Required("DSInformation", "body", m.DSInformation); err != nil {
		return err
	}

	if m.DSInformation != nil {
		if err := m.DSInformation.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("DSInformation")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsGameSession) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("GameMode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateIsFull(formats strfmt.Registry) error {

	if err := validate.Required("IsFull", "body", m.IsFull); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateJoinType(formats strfmt.Registry) error {

	if err := validate.Required("JoinType", "body", m.JoinType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("Members", "body", m.Members); err != nil {
		return err
	}

	for i := 0; i < len(m.Members); i++ {
		if swag.IsZero(m.Members[i]) { // not required
			continue
		}

		if m.Members[i] != nil {
			if err := m.Members[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsGameSession) validateBackfillTicketID(formats strfmt.Registry) error {

	if err := validate.Required("backfillTicketID", "body", m.BackfillTicketID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateConfiguration(formats strfmt.Registry) error {

	if err := validate.Required("configuration", "body", m.Configuration); err != nil {
		return err
	}

	if m.Configuration != nil {
		if err := m.Configuration.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("configuration")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsGameSession) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("leaderID", "body", m.LeaderID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateTeams(formats strfmt.Registry) error {

	if err := validate.Required("teams", "body", m.Teams); err != nil {
		return err
	}

	for i := 0; i < len(m.Teams); i++ {
		if swag.IsZero(m.Teams[i]) { // not required
			continue
		}

		if m.Teams[i] != nil {
			if err := m.Teams[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("teams" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsGameSession) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsGameSession) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsGameSession) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsGameSession) UnmarshalBinary(b []byte) error {
	var res ModelsGameSession
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
