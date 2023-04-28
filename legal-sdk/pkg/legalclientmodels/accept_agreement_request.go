// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package legalclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// AcceptAgreementRequest Accept agreement request
//
// swagger:model Accept agreement request.
type AcceptAgreementRequest struct {

	// isaccepted
	// Required: true
	IsAccepted *bool `json:"isAccepted"`

	// isneedtosendeventmarketing
	IsNeedToSendEventMarketing bool `json:"isNeedToSendEventMarketing"`

	// localizedpolicyversionid
	// Required: true
	LocalizedPolicyVersionID *string `json:"localizedPolicyVersionId"`

	// policyid
	// Required: true
	PolicyID *string `json:"policyId"`

	// policyversionid
	// Required: true
	PolicyVersionID *string `json:"policyVersionId"`
}

// Validate validates this Accept agreement request
func (m *AcceptAgreementRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateIsAccepted(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateLocalizedPolicyVersionID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePolicyVersionID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *AcceptAgreementRequest) validateIsAccepted(formats strfmt.Registry) error {

	if err := validate.Required("isAccepted", "body", m.IsAccepted); err != nil {
		return err
	}

	return nil
}

func (m *AcceptAgreementRequest) validateLocalizedPolicyVersionID(formats strfmt.Registry) error {

	if err := validate.Required("localizedPolicyVersionId", "body", m.LocalizedPolicyVersionID); err != nil {
		return err
	}

	return nil
}

func (m *AcceptAgreementRequest) validatePolicyID(formats strfmt.Registry) error {

	if err := validate.Required("policyId", "body", m.PolicyID); err != nil {
		return err
	}

	return nil
}

func (m *AcceptAgreementRequest) validatePolicyVersionID(formats strfmt.Registry) error {

	if err := validate.Required("policyVersionId", "body", m.PolicyVersionID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *AcceptAgreementRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *AcceptAgreementRequest) UnmarshalBinary(b []byte) error {
	var res AcceptAgreementRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
