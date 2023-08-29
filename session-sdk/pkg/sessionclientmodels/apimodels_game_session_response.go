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

// ApimodelsGameSessionResponse Apimodels game session response
//
// swagger:model Apimodels game session response.
type ApimodelsGameSessionResponse struct {

	// dsinformation
	// Required: true
	DSInformation *ApimodelsDSInformationResponse `json:"DSInformation"`

	// attributes
	Attributes interface{} `json:"attributes,omitempty"`

	// backfillticketid
	// Required: true
	BackfillTicketID *string `json:"backfillTicketID"`

	// code
	Code string `json:"code,omitempty"`

	// configuration
	// Required: true
	Configuration *ApimodelsPublicConfiguration `json:"configuration"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// createdby
	// Required: true
	CreatedBy *string `json:"createdBy"`

	// expiredat
	ExpiredAt string `json:"expiredAt,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isactive
	// Required: true
	IsActive *bool `json:"isActive"`

	// isfull
	// Required: true
	IsFull *bool `json:"isFull"`

	// leaderid
	// Required: true
	LeaderID *string `json:"leaderID"`

	// matchpool
	// Required: true
	MatchPool *string `json:"matchPool"`

	// members
	// Required: true
	Members []*ApimodelsUserResponse `json:"members"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// storage
	Storage interface{} `json:"storage,omitempty"`

	// teams
	Teams []*ModelsTeam `json:"teams,omitempty"`

	// ticketids
	TicketIDs []string `json:"ticketIDs,omitempty"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`

	// version
	// Required: true
	// Format: int32
	Version *int32 `json:"version"`
}

// Validate validates this Apimodels game session response
func (m *ApimodelsGameSessionResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDSInformation(formats); err != nil {
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
