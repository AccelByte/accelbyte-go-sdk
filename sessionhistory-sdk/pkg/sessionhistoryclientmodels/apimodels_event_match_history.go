// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sessionhistoryclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelsEventMatchHistory Apimodels event match history
//
// swagger:model Apimodels event match history.
type ApimodelsEventMatchHistory struct {

	// action
	// Required: true
	Action *string `json:"action"`

	// match
	Match *ModelsMatch `json:"match,omitempty"`

	// matchid
	// Required: true
	MatchID *string `json:"matchID"`

	// matchpool
	// Required: true
	Matchpool *string `json:"matchpool"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// podname
	// Required: true
	PodName *string `json:"podName"`

	// ruleset
	RuleSet string `json:"ruleSet,omitempty"`

	// tickid
	TickID string `json:"tickID,omitempty"`

	// timestamp
	// Required: true
	// Format: date-time
	Timestamp strfmt.DateTime `json:"timestamp"`
}

// Validate validates this Apimodels event match history
func (m *ApimodelsEventMatchHistory) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAction(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchpool(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateTimestamp(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelsEventMatchHistory) validateAction(formats strfmt.Registry) error {

	if err := validate.Required("action", "body", m.Action); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsEventMatchHistory) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("matchID", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsEventMatchHistory) validateMatchpool(formats strfmt.Registry) error {

	if err := validate.Required("matchpool", "body", m.Matchpool); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsEventMatchHistory) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsEventMatchHistory) validatePodName(formats strfmt.Registry) error {

	if err := validate.Required("podName", "body", m.PodName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelsEventMatchHistory) validateTimestamp(formats strfmt.Registry) error {

	if err := validate.Required("timestamp", "body", strfmt.DateTime(m.Timestamp)); err != nil {
		return err
	}

	if err := validate.FormatOf("timestamp", "body", "date-time", m.Timestamp.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelsEventMatchHistory) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelsEventMatchHistory) UnmarshalBinary(b []byte) error {
	var res ApimodelsEventMatchHistory
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
