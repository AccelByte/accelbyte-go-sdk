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

// ApimodelsKickResponse Apimodels kick response
//
// swagger:model Apimodels kick response.
type ApimodelsKickResponse struct {

	// leaderid
	// Required: true
	LeaderID *string `json:"leaderID"`

	// members
	// Required: true
	Members []*ApimodelsUserResponse `json:"members"`

	// partyid
	// Required: true
	PartyID *string `json:"partyID"`
}

// Validate validates this Apimodels kick response
func (m *ApimodelsKickResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateLeaderID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMembers(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePartyID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsKickResponse) validateLeaderID(formats strfmt.Registry) error {

	if err := validate.Required("leaderID", "body", m.LeaderID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsKickResponse) validateMembers(formats strfmt.Registry) error {

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

func (m *ApimodelsKickResponse) validatePartyID(formats strfmt.Registry) error {

	if err := validate.Required("partyID", "body", m.PartyID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsKickResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsKickResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelsKickResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
