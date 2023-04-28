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

// RestapiModerationRuleActiveRequest Restapi moderation rule active request
//
// swagger:model Restapi moderation rule active request.
type RestapiModerationRuleActiveRequest struct {

	// active
	// Required: true
	Active *bool `json:"active"`
}

// Validate validates this Restapi moderation rule active request
func (m *RestapiModerationRuleActiveRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateActive(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RestapiModerationRuleActiveRequest) validateActive(formats strfmt.Registry) error {

	if err := validate.Required("active", "body", m.Active); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RestapiModerationRuleActiveRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RestapiModerationRuleActiveRequest) UnmarshalBinary(b []byte) error {
	var res RestapiModerationRuleActiveRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
