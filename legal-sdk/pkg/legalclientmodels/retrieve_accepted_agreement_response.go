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

// RetrieveAcceptedAgreementResponse Retrieve accepted agreement response
//
// swagger:model Retrieve accepted agreement response.
type RetrieveAcceptedAgreementResponse struct {

	// countrycode
	CountryCode string `json:"countryCode,omitempty"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// displayversion
	DisplayVersion string `json:"displayVersion,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isaccepted
	IsAccepted bool `json:"isAccepted"`

	// localizedpolicyversion
	LocalizedPolicyVersion *LocalizedPolicyVersionObject `json:"localizedPolicyVersion,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// policyid
	PolicyID string `json:"policyId,omitempty"`

	// policyname
	PolicyName string `json:"policyName,omitempty"`

	// policytype
	PolicyType string `json:"policyType,omitempty"`

	// signingdate
	// Format: date-time
	SigningDate *strfmt.DateTime `json:"signingDate,omitempty"`

	// tags
	Tags []string `json:"tags,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`
}

// Validate validates this Retrieve accepted agreement response
func (m *RetrieveAcceptedAgreementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveAcceptedAgreementResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveAcceptedAgreementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveAcceptedAgreementResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveAcceptedAgreementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
