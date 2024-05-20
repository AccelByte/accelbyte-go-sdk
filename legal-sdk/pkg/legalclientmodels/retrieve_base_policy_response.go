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

// RetrieveBasePolicyResponse Retrieve base policy response
//
// swagger:model Retrieve base policy response.
type RetrieveBasePolicyResponse struct {

	// affectedclientids
	// Unique: true
	AffectedClientIds []string `json:"affectedClientIds"`

	// basepolicyname
	// Required: true
	BasePolicyName *string `json:"basePolicyName"`

	// createdat
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// id
	// Required: true
	ID *string `json:"id"`

	// ishidden
	IsHidden bool `json:"isHidden"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`

	// policies
	Policies []*PolicyObject `json:"policies,omitempty"`

	// policytypeid
	PolicyTypeID string `json:"policyTypeId,omitempty"`

	// policytypename
	PolicyTypeName string `json:"policyTypeName,omitempty"`

	// tags
	// Unique: true
	Tags []string `json:"tags"`

	// updatedat
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this Retrieve base policy response
func (m *RetrieveBasePolicyResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateBasePolicyName(formats); err != nil {
		res = append(res, err)
	}
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

func (m *RetrieveBasePolicyResponse) validateBasePolicyName(formats strfmt.Registry) error {

	if err := validate.Required("basePolicyName", "body", m.BasePolicyName); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveBasePolicyResponse) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *RetrieveBasePolicyResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *RetrieveBasePolicyResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *RetrieveBasePolicyResponse) UnmarshalBinary(b []byte) error {
	var res RetrieveBasePolicyResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
