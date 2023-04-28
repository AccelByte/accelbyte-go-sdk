// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package lobbyclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsAdminSetProfanityRuleForNamespaceRequest Models admin set profanity rule for namespace request
//
// swagger:model Models admin set profanity rule for namespace request.
type ModelsAdminSetProfanityRuleForNamespaceRequest struct {

	// rule
	// Required: true
	Rule *string `json:"rule"`
}

// Validate validates this Models admin set profanity rule for namespace request
func (m *ModelsAdminSetProfanityRuleForNamespaceRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateRule(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsAdminSetProfanityRuleForNamespaceRequest) validateRule(formats strfmt.Registry) error {

	if err := validate.Required("rule", "body", m.Rule); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsAdminSetProfanityRuleForNamespaceRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsAdminSetProfanityRuleForNamespaceRequest) UnmarshalBinary(b []byte) error {
	var res ModelsAdminSetProfanityRuleForNamespaceRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
