// Code generated by go-swagger; DO NOT EDIT.

package legalclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// PolicyVersionObject policy version object
//
// swagger:model PolicyVersionObject
type PolicyVersionObject struct {

	// created at
	// Format: date-time
	CreatedAt *strfmt.DateTime `json:"createdAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// display version
	// Required: true
	DisplayVersion *string `json:"displayVersion"`

	// id
	// Required: true
	ID *string `json:"id"`

	// is committed
	// Required: true
	IsCommitted *bool `json:"isCommitted"`

	// is in effect
	// Required: true
	IsInEffect *bool `json:"isInEffect"`

	// published date
	// Format: date-time
	PublishedDate *strfmt.DateTime `json:"publishedDate,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updated at
	// Format: date-time
	UpdatedAt *strfmt.DateTime `json:"updatedAt,omitempty"`
}

// Validate validates this policy version object
func (m *PolicyVersionObject) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateDisplayVersion(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsCommitted(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateIsInEffect(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePublishedDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdatedAt(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *PolicyVersionObject) validateCreatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.CreatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("createdAt", "body", "date-time", m.CreatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateDisplayVersion(formats strfmt.Registry) error {

	if err := validate.Required("displayVersion", "body", m.DisplayVersion); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateID(formats strfmt.Registry) error {

	if err := validate.Required("id", "body", m.ID); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateIsCommitted(formats strfmt.Registry) error {

	if err := validate.Required("isCommitted", "body", m.IsCommitted); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateIsInEffect(formats strfmt.Registry) error {

	if err := validate.Required("isInEffect", "body", m.IsInEffect); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validatePublishedDate(formats strfmt.Registry) error {

	if swag.IsZero(m.PublishedDate) { // not required
		return nil
	}

	if err := validate.FormatOf("publishedDate", "body", "date-time", m.PublishedDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *PolicyVersionObject) validateUpdatedAt(formats strfmt.Registry) error {

	if swag.IsZero(m.UpdatedAt) { // not required
		return nil
	}

	if err := validate.FormatOf("updatedAt", "body", "date-time", m.UpdatedAt.String(), formats); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *PolicyVersionObject) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *PolicyVersionObject) UnmarshalBinary(b []byte) error {
	var res PolicyVersionObject
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
