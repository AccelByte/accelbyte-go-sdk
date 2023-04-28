// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package eventlogclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMultipleAgentType Models multiple agent type
//
// swagger:model Models multiple agent type.
type ModelsMultipleAgentType struct {

	// agenttypes
	// Required: true
	AgentTypes []*ModelsAgentType `json:"AgentTypes"`
}

// Validate validates this Models multiple agent type
func (m *ModelsMultipleAgentType) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAgentTypes(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMultipleAgentType) validateAgentTypes(formats strfmt.Registry) error {

	if err := validate.Required("AgentTypes", "body", m.AgentTypes); err != nil {
		return err
	}

	for i := 0; i < len(m.AgentTypes); i++ {
		if swag.IsZero(m.AgentTypes[i]) { // not required
			continue
		}

		if m.AgentTypes[i] != nil {
			if err := m.AgentTypes[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("AgentTypes" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMultipleAgentType) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMultipleAgentType) UnmarshalBinary(b []byte) error {
	var res ModelsMultipleAgentType
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
