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

// RetrieveUserAcceptedAgreementResponse Retrieve user accepted agreement response
//
// swagger:model Retrieve user accepted agreement response.
type RetrieveUserAcceptedAgreementResponse struct {

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// displayname
	DisplayName string `json:"displayName,omitempty"`

	// email
	Email string `json:"email,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// isaccepted
	IsAccepted bool `json:"isAccepted"`

	// localizedpolicyversion
	LocalizedPolicyVersion *LocalizedPolicyVersionObject `json:"localizedPolicyVersion,omitempty"`

	// namespace
	Namespace string `json:"namespace,omitempty"`

	// policyname
	PolicyName string `json:"policyName,omitempty"`

	// policytype
	PolicyType string `json:"policyType,omitempty"`

	// publisheruserid
	PublisherUserID string `json:"publisherUserId,omitempty"`

	// signingdate
	// Format: date-time
	SigningDate *strfmt.DateTime `json:"signingDate,omitempty"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`

	// userid
	UserID string `json:"userId,omitempty"`

	// username
	Username string `json:"username,omitempty"`
}

// Validate validates this Retrieve user accepted agreement response
func (m *RetrieveUserAcceptedAgreementResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *RetrieveUserAcceptedAgreementResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveUserAcceptedAgreementResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveUserAcceptedAgreementResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveUserAcceptedAgreementResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
