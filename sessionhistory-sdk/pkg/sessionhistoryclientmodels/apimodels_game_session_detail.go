// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsGameSessionDetail Apimodels game session detail
//
// swagger:model Apimodels game session detail.
type ApimodelsGameSessionDetail struct {

	// active
	// Required: true
	Active *bool `json:"active"`

	// created_at
	// Required: true
	CreatedAt *string `json:"created_at"`

	// ended
	// Required: true
	Ended *bool `json:"ended"`

	// histories
	// Required: true
	Histories []*ApimodelsHistory `json:"histories"`

	// joinability
	// Required: true
	Joinability *string `json:"joinability"`

	// last_data
	// Required: true
	LastData *ModelsGameSession `json:"last_data"`

	// match_pool
	// Required: true
	MatchPool *string `json:"match_pool"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// persistent
	// Required: true
	Persistent *bool `json:"persistent"`

	// pod_name
	// Required: true
	PodName *string `json:"pod_name"`

	// sessionid
	// Required: true
	SessionID *string `json:"sessionID"`

	// session_template
	// Required: true
	SessionTemplate *string `json:"session_template"`

	// updated_at
	// Required: true
	// Format: date-time
	UpdatedAt strfmt.DateTime `json:"updated_at"`
}

// Validate validates this Apimodels game session detail
func (m *ApimodelsGameSessionDetail) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateEnded(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateHistories(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinability(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLastData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchPool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePersistent(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSessionTemplate(formats); err != nil {
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

func (m *ApimodelsGameSessionDetail) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateEnded(formats strfmt.Registry) error {

	if err := validate.Required("ended", "body", m.Ended); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateHistories(formats strfmt.Registry) error {

	if err := validate.Required("histories", "body", m.Histories); err != nil {
		return err
	}

	for i := 0; i < len(m.Histories); i++ {
		if swag.IsZero(m.Histories[i]) { // not required
			continue
		}

		if m.Histories[i] != nil {
			if err := m.Histories[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("histories" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateJoinability(formats strfmt.Registry) error {

	if err := validate.Required("joinability", "body", m.Joinability); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateLastData(formats strfmt.Registry) error {

	if err := validate.Required("last_data", "body", m.LastData); err != nil {
		return err
	}

	if m.LastData != nil {
		if err := m.LastData.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("last_data")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateMatchPool(formats strfmt.Registry) error {

	if err := validate.Required("match_pool", "body", m.MatchPool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validatePersistent(formats strfmt.Registry) error {

	if err := validate.Required("persistent", "body", m.Persistent); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("pod_name", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateSessionID(formats strfmt.Registry) error {

	if err := validate.Required("sessionID", "body", m.SessionID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateSessionTemplate(formats strfmt.Registry) error {

	if err := validate.Required("session_template", "body", m.SessionTemplate); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsGameSessionDetail) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updated_at", "body", strfmt.DateTime(m.UpdatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("updated_at", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsGameSessionDetail) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsGameSessionDetail) UnmarshalBinary(b []byte) error {
	var res ApimodelsGameSessionDetail
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
