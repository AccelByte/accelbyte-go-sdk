// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiModerationRuleResponse Restapi moderation rule response
//
// swagger:model Restapi moderation rule response.
type RestapiModerationRuleResponse struct {

	// GOING TO DEPRECATE, PLEASE DO NOT USE, for replacement use the "actions" field
	Action string `json:"action,omitempty"`

	// Action configurations for moderation rule
	// Required: true
	Actions *RestapiModerationRuleActionsResponse `json:"actions"`

	// active
	// Required: true
	Active *bool `json:"active"`

	// category
	// Required: true
	Category *string `json:"category"`

	// createdat
	// Required: true
	// Format: date-time
	CreatedAt strfmt.DateTime `json:"createdAt"`

	// extensioncategory
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// reason
	// Required: true
	Reason *string `json:"reason"`

	// threshold
	// Required: true
	// Format: int32
	Threshold *int32 `json:"threshold"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Restapi moderation rule response
func (m *RestapiModerationRuleResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActions(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCategory(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateReason(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateThreshold(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiModerationRuleResponse) validateActions(formats strfmt.Registry) error {

	if err := validate.Required("actions", "body", m.Actions); err != nil {
		return err
	}

	if m.Actions != nil {
		if err := m.Actions.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("actions")
			}
			return err
		}
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", strfmt.DateTime(m.CreatedAt)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleResponse) validateThreshold(formats strfmt.Registry) error {

	if err := validate.Required("threshold", "body", m.Threshold); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiModerationRuleResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiModerationRuleResponse) UnmarshalBinary(b []byte) error {
	var res RestapiModerationRuleResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
