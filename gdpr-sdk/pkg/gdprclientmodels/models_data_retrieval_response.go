// Code generated by go-swagger; DO NOT EDIT.

package gdprclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsDataRetrievalResponse models data retrieval response
//
// swagger:model models.DataRetrievalResponse
type ModelsDataRetrievalResponse struct {

	// namespace
	// Required: true
	Namespace *string `json:"Namespace"`

	// request date
	// Required: true
	// Format: date-time
	RequestDate strfmt.DateTime `json:"RequestDate"`

	// user ID
	// Required: true
	UserID *string `json:"UserID"`
}

// Validate validates this models data retrieval response
func (m *ModelsDataRetrievalResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateNamespace(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateRequestDate(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUserID(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsDataRetrievalResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("Namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDataRetrievalResponse) validateRequestDate(formats strfmt.Registry) error {

	if err := validate.Required("RequestDate", "body", strfmt.DateTime(m.RequestDate)); err != nil {
		return err
	}

	if err := validate.FormatOf("RequestDate", "body", "date-time", m.RequestDate.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsDataRetrievalResponse) validateUserID(formats strfmt.Registry) error {

	if err := validate.Required("UserID", "body", m.UserID); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsDataRetrievalResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsDataRetrievalResponse) UnmarshalBinary(b []byte) error {
	var res ModelsDataRetrievalResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
