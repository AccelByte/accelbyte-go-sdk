// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// RestapiModerationRuleRequest Restapi moderation rule request
//
// swagger:model Restapi moderation rule request.
type RestapiModerationRuleRequest struct {

	// GOING TO DEPRECATE, PLEASE DO NOT USE, for replacement use the "actions" field
	// Enum: ['HideContent']
	Action string `json:"action,omitempty"`

	// Action configurations for moderation rule
	Actions *RestapiModerationRuleActionsRequest `json:"actions,omitempty"`

	// status of this rule
	// Required: true
	Active *bool `json:"active"`

	// Report category, must select from pre defined list
	// Enum: ['CHAT', 'EXTENSION', 'UGC', 'USER']
	// Required: true
	Category *string `json:"category"`

	// Report extension category, consist of custom services sub-category (eg. salesItem,challenge,etc)
	ExtensionCategory string `json:"extensionCategory,omitempty"`

	// Reason of report, can select from pre defined list, max 128 chars
	// Required: true
	Reason *string `json:"reason"`

	// the threshold to trigger auto moderation
	// Required: true
	// Format: int32
	Threshold *int32 `json:"threshold"`
}

// Validate validates this Restapi moderation rule request
func (m *RestapiModerationRuleRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCategory(formats); err != nil {
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

var restapiModerationRuleRequestTypeActionPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["HIDECONTENT"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiModerationRuleRequestTypeActionPropEnum = append(restapiModerationRuleRequestTypeActionPropEnum, v)
	}
}

const (

	// RestapiModerationRuleRequestActionHIDECONTENT captures enum value "HIDECONTENT"
	RestapiModerationRuleRequestActionHIDECONTENT string = "HIDECONTENT"
)

// prop value enum
func (m *RestapiModerationRuleRequest) validateActionEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiModerationRuleRequestTypeActionPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiModerationRuleRequest) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

var restapiModerationRuleRequestTypeCategoryPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CHAT", "EXTENSION", "UGC", "USER"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		restapiModerationRuleRequestTypeCategoryPropEnum = append(restapiModerationRuleRequestTypeCategoryPropEnum, v)
	}
}

const (

	// RestapiModerationRuleRequestCategoryCHAT captures enum value "CHAT"
	RestapiModerationRuleRequestCategoryCHAT string = "CHAT"

	// RestapiModerationRuleRequestCategoryEXTENSION captures enum value "EXTENSION"
	RestapiModerationRuleRequestCategoryEXTENSION string = "EXTENSION"

	// RestapiModerationRuleRequestCategoryUGC captures enum value "UGC"
	RestapiModerationRuleRequestCategoryUGC string = "UGC"

	// RestapiModerationRuleRequestCategoryUSER captures enum value "USER"
	RestapiModerationRuleRequestCategoryUSER string = "USER"
)

// prop value enum
func (m *RestapiModerationRuleRequest) validateCategoryEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, restapiModerationRuleRequestTypeCategoryPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *RestapiModerationRuleRequest) validateCategory(formats strfmt.Registry) error {

	if err := validate.Required("category", "body", m.Category); err != nil {
		return err
	}

	// value enum
	if err := m.validateCategoryEnum("category", "body", *m.Category); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleRequest) validateReason(formats strfmt.Registry) error {

	if err := validate.Required("reason", "body", m.Reason); err != nil {
		return err
	}

	return nil
}

func (m *RestapiModerationRuleRequest) validateThreshold(formats strfmt.Registry) error {

	if err := validate.Required("threshold", "body", m.Threshold); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiModerationRuleRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiModerationRuleRequest) UnmarshalBinary(b []byte) error {
	var res RestapiModerationRuleRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
