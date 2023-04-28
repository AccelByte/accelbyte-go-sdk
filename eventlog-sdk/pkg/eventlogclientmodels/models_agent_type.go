// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAgentType Models agent type
//
// swagger:model Models agent type.
type ModelsAgentType struct {

	// agenttype
	// Required: true
	// Format: int32
	AgentType *int32 `json:"AgentType"`

	// description
	// Required: true
	Description *string `json:"Description"`
}

// Validate validates this Models agent type
func (m *ModelsAgentType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgentType(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDescription(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAgentType) validateAgentType(formats strfmt.Registry) error {

	if err := validate.Required("AgentType", "body", m.AgentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsAgentType) validateDescription(formats strfmt.Registry) error {

	if err := validate.Required("Description", "body", m.Description); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAgentType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAgentType) UnmarshalBinary(b []byte) error {
	var res ModelsAgentType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
