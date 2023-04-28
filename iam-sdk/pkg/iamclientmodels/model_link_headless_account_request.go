// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelLinkHeadlessAccountRequest Model link headless account request
//
// swagger:model Model link headless account request.
type ModelLinkHeadlessAccountRequest struct {

	// chosennamespaces
	// Required: true
	ChosenNamespaces []string `json:"chosenNamespaces"`

	// onetimelinkcode
	// Required: true
	OneTimeLinkCode *string `json:"oneTimeLinkCode"`
}

// Validate validates this Model link headless account request
func (m *ModelLinkHeadlessAccountRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateChosenNamespaces(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateOneTimeLinkCode(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelLinkHeadlessAccountRequest) validateChosenNamespaces(formats strfmt.Registry) error {

	if err := validate.Required("chosenNamespaces", "body", m.ChosenNamespaces); err != nil {
		return err
	}

	return nil
}

func (m *ModelLinkHeadlessAccountRequest) validateOneTimeLinkCode(formats strfmt.Registry) error {

	if err := validate.Required("oneTimeLinkCode", "body", m.OneTimeLinkCode); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelLinkHeadlessAccountRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelLinkHeadlessAccountRequest) UnmarshalBinary(b []byte) error {
	var res ModelLinkHeadlessAccountRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
