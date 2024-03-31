// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// ModelsGameSession Models game session
//
// swagger:model Models game session.
type ModelsGameSession struct {

	// attributes
	Attributes interface{} `json:"Attributes,omitempty"`

	// backfillticketid
	BackfillTicketID string `json:"BackfillTicketID,omitempty"`

	// code
	Code string `json:"Code,omitempty"`

	// configuration
	Configuration *ModelsSessionConfig `json:"Configuration,omitempty"`

	// configurationname
	ConfigurationName string `json:"ConfigurationName,omitempty"`

	// createdat
	CreatedAt string `json:"CreatedAt,omitempty"`

	// createdby
	CreatedBy string `json:"CreatedBy,omitempty"`

	// dsinformation
	DSInformation *ModelsDSInformation `json:"DSInformation,omitempty"`

	// gamemode
	GameMode string `json:"GameMode,omitempty"`

	// id
	ID string `json:"ID,omitempty"`

	// isfull
	IsFull bool `json:"IsFull"`

	// leaderid
	LeaderID string `json:"LeaderID,omitempty"`

	// matchpool
	MatchPool string `json:"MatchPool,omitempty"`

	// members
	Members []*ModelsUser `json:"Members,omitempty"`

	// namespace
	Namespace string `json:"Namespace,omitempty"`

	// processingtime
	// Format: int64
	ProcessingTime int64 `json:"ProcessingTime,omitempty"`

	// teams
	Teams []*ModelsGameSessionTeam `json:"Teams,omitempty"`

	// ticketids
	TicketIDs []string `json:"TicketIDs,omitempty"`

	// updatedat
	UpdatedAt string `json:"UpdatedAt,omitempty"`

	// version
	// Format: int32
	Version int32 `json:"Version,omitempty"`

	// isactive
	IsActive bool `json:"isActive"`
}

// Validate validates this Models game session
func (m *ModelsGameSession) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
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
