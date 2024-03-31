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

// ModelsParty Models party
//
// swagger:model Models party.
type ModelsParty struct {

	// attributes
	Attributes interface{} `json:"Attributes,omitempty"`

	// code
	Code string `json:"Code,omitempty"`

	// configuration
	Configuration *ModelsSessionConfiguration `json:"Configuration,omitempty"`

	// configurationname
	ConfigurationName string `json:"ConfigurationName,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"CreatedAt,omitempty"`

	// createdby
	CreatedBy string `json:"CreatedBy,omitempty"`

	// expiredat
	// Format: date-time
	ExpiredAt *strfmt.DateTime `json:"ExpiredAt,omitempty"`

	// id
	ID string `json:"ID,omitempty"`

	// isactive
	IsActive bool `json:"IsActive"`

	// isfull
	IsFull bool `json:"IsFull"`

	// leaderid
	LeaderID string `json:"LeaderID,omitempty"`

	// members
	Members []*ModelsUser `json:"Members,omitempty"`

	// namespace
	Namespace string `json:"Namespace,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"UpdatedAt,omitempty"`

	// version
	// Format: int32
	Version int32 `json:"Version,omitempty"`
}

// Validate validates this Models party
func (m *ModelsParty) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModelsParty) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsParty) UnmarshalBinary(b []byte) error {
	var res ModelsParty
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
