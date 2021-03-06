// Code generated by go-swagger; DO NOT EDIT.

package iamclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelWebLinkingResponse model web linking response
//
// swagger:model model.WebLinkingResponse
type ModelWebLinkingResponse struct {

	// third party url
	// Required: true
	ThirdPartyURL *string `json:"third_party_url"`
}

// Validate validates this model web linking response
func (m *ModelWebLinkingResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateThirdPartyURL(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelWebLinkingResponse) validateThirdPartyURL(formats strfmt.Registry) error {

	if err := validate.Required("third_party_url", "body", m.ThirdPartyURL); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelWebLinkingResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelWebLinkingResponse) UnmarshalBinary(b []byte) error {
	var res ModelWebLinkingResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
