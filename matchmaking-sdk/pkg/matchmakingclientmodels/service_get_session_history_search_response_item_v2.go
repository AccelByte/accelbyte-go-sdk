// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmakingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ServiceGetSessionHistorySearchResponseItemV2 Service get session history search response item V2
//
// swagger:model Service get session history search response item V2.
type ServiceGetSessionHistorySearchResponseItemV2 struct {

	// _id
	// Required: true
	ID string `json:"_id"`

	// created_at
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"created_at"`

	// game_mode
	// Required: true
	GameMode string `json:"game_mode"`

	// joinable
	// Required: true
	Joinable bool `json:"joinable"`

	// match_id
	// Required: true
	MatchID string `json:"match_id"`

	// namespace
	// Required: true
	Namespace string `json:"namespace"`

	// status
	// Required: true
	Status string `json:"status"`

	// sub_game_mode
	// Required: true
	SubGameMode []string `json:"sub_game_mode"`
}

// Validate validates this Service get session history search response item V2
func (m *ServiceGetSessionHistorySearchResponseItemV2) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateGameMode(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateJoinable(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMatchID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateSubGameMode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateID(formats strfmt.Registry) error {

	if err := validate.Required("_id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("created_at", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("created_at", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateGameMode(formats strfmt.Registry) error {

	if err := validate.Required("game_mode", "body", m.GameMode); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateJoinable(formats strfmt.Registry) error {

	if err := validate.Required("joinable", "body", m.Joinable); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateMatchID(formats strfmt.Registry) error {

	if err := validate.Required("match_id", "body", m.MatchID); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

func (m *ServiceGetSessionHistorySearchResponseItemV2) validateSubGameMode(formats strfmt.Registry) error {

	if err := validate.Required("sub_game_mode", "body", m.SubGameMode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ServiceGetSessionHistorySearchResponseItemV2) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ServiceGetSessionHistorySearchResponseItemV2) UnmarshalBinary(b []byte) error {
	var res ServiceGetSessionHistorySearchResponseItemV2
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
