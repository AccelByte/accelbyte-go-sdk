// Code generated by go-swagger; DO NOT EDIT.

package sessionclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsGameSessionResponse apimodels game session response
//
// swagger:model apimodels.GameSessionResponse
type ApimodelsGameSessionResponse struct {

	// d s information
	// Required: true
	DSInformation *ApimodelsDSInformationResponse `json:"DSInformation"`

	// attributes
	// Required: true
	Attributes interface{} `json:"attributes"`

	// backfill ticket ID
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`

	// configuration
	// Required: true
	Configuration *ApimodelsPublicConfiguration `json:"configuration"`

	// created at
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// created by
	// Required: true
	CreatedBy *string `json:"createdBy"`

	// expired at
	ExpiredAt string `json:"expiredAt,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// is active
	// Required: true
	IsActive *bool `json:"isActive"`

	// is full
	// Required: true
	IsFull *bool `json:"isFull"`

	// leader ID
	// Required: true
	LeaderID *string `json:"leaderID"`

	// match pool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// members
	// Required: true
	Members []*ApimodelsUserResponse `json:"members"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// teams
	// Required: true
	Teams []*ModelsTeam `json:"teams"`

	// ticket i ds
	// Required: true
	TicketIDs []string `json:"ticketIDs"`

	// updated at
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// version
	// Required: true
	Version *int32 `json:"version"`
}

// Validate validates this apimodels game session response
func (m *ApimodelsGameSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDSInformation(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateAttributes(formats); err != nil {
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

	if err := m.validateCreatedBy(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsActive(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsFull(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLeaderID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTeams(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTicketIDs(formats); err != nil {
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

func (m *ApimodelsGameSessionResponse) validateDSInformation(formats strfmt.Registry) error {

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

func (m *ApimodelsGameSessionResponse) validateAttributes(formats strfmt.Registry) error {

	if err := validate.Required("attributes", "body", m.Attributes); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateBackfillTicketID(formats strfmt.Registry) error {

	if err := validate.Required("backfillTicketID", "body", m.BackfillTicketID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateConfiguration(formats strfmt.Registry) error {

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

func (m *ApimodelsGameSessionResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateCreatedBy(formats strfmt.Registry) error {

	if err := validate.Required("createdBy", "body", m.CreatedBy); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateIsActive(formats strfmt.Registry) error {

	if err := validate.Required("isActive", "body", m.IsActive); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateIsFull(formats strfmt.Registry) error {

	if err := validate.Required("isFull", "body", m.IsFull); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("leaderID", "body", m.LeaderID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("matchPool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateMembers(formats strfmt.Registry) error {

	if err := validate.Required("members", "body", m.Members); err != nil {
		return err
	}

	for i := 0; i < len(m.Members); i++ {
		if swag.IsZero(m.Members[i]) { // not required
			continue
		}

		if m.Members[i] != nil {
			if err := m.Members[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("members" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateTeams(formats strfmt.Registry) error {

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

func (m *ApimodelsGameSessionResponse) validateTicketIDs(formats strfmt.Registry) error {

	if err := validate.Required("ticketIDs", "body", m.TicketIDs); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionResponse) validateVersion(formats strfmt.Registry) error {

	if err := validate.Required("version", "body", m.Version); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsGameSessionResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsGameSessionResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsGameSessionResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}