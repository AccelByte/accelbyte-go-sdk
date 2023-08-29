// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ClawbackInfo Clawback info
//
// swagger:model Clawback info.
type ClawbackInfo struct {

	// created at time
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// Whether or not test event
	DryRun bool `json:"dryRun"`

	// Source event content
	EventContent interface{} `json:"eventContent,omitempty"`

	// third-party Event id / notification id
	EventID string `json:"eventId,omitempty"`

	// Event type
	EventType string `json:"eventType,omitempty"`

	// third-party order id
	ExternalOrderID string `json:"externalOrderId,omitempty"`

	// Feedback Content to third-party platform
	FeedbackContent interface{} `json:"feedbackContent,omitempty"`

	// Feedback status
	// Enum: ['FAIL', 'INIT', 'SUCCESS']
	FeedbackStatus string `json:"feedbackStatus,omitempty"`

	// Feedback status reason
	FeedbackStatusReason string `json:"feedbackStatusReason,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// third party platform name, currently only support PLAYSTATION
	Platform string `json:"platform,omitempty"`

	// processId is fulfillment history id if event type is CHARGEBACK REVERSAL, and processId is revocation history id if event type is CHARGEBACK/REFUND
	ProcessID string `json:"processId,omitempty"`

	// Process status
	// Enum: ['FAIL', 'IGNORED', 'INIT', 'SUCCESS']
	Status string `json:"status,omitempty"`

	// Process status reason
	StatusReason string `json:"statusReason,omitempty"`

	// updated at time
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// AGS user id
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Clawback info
func (m *ClawbackInfo) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var clawbackInfoTypeFeedbackStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "INIT", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		clawbackInfoTypeFeedbackStatusPropEnum = append(clawbackInfoTypeFeedbackStatusPropEnum, v)
	}
}

const (

	// ClawbackInfoFeedbackStatusFAIL captures enum value "FAIL"
	ClawbackInfoFeedbackStatusFAIL string = "FAIL"

	// ClawbackInfoFeedbackStatusINIT captures enum value "INIT"
	ClawbackInfoFeedbackStatusINIT string = "INIT"

	// ClawbackInfoFeedbackStatusSUCCESS captures enum value "SUCCESS"
	ClawbackInfoFeedbackStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *ClawbackInfo) validateFeedbackStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, clawbackInfoTypeFeedbackStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

func (m *ClawbackInfo) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *ClawbackInfo) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

var clawbackInfoTypeStatusPropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["FAIL", "IGNORED", "INIT", "SUCCESS"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		clawbackInfoTypeStatusPropEnum = append(clawbackInfoTypeStatusPropEnum, v)
	}
}

const (

	// ClawbackInfoStatusFAIL captures enum value "FAIL"
	ClawbackInfoStatusFAIL string = "FAIL"

	// ClawbackInfoStatusIGNORED captures enum value "IGNORED"
	ClawbackInfoStatusIGNORED string = "IGNORED"

	// ClawbackInfoStatusINIT captures enum value "INIT"
	ClawbackInfoStatusINIT string = "INIT"

	// ClawbackInfoStatusSUCCESS captures enum value "SUCCESS"
	ClawbackInfoStatusSUCCESS string = "SUCCESS"
)

// prop value enum
func (m *ClawbackInfo) validateStatusEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, clawbackInfoTypeStatusPropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ClawbackInfo) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ClawbackInfo) UnmarshalBinary(b []byte) error {
	var res ClawbackInfo
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
