// Code generated by go-swagger; DO NOT EDIT.

package ugcclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsContentLikeResponse models content like response
//
// swagger:model models.ContentLikeResponse
type ModelsContentLikeResponse struct {

	// content Id
	// Required: true
	ContentID *string `json:"contentId"`

	// like status
	// Required: true
	LikeStatus *bool `json:"likeStatus"`
}

// Validate validates this models content like response
func (m *ModelsContentLikeResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentID(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateLikeStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsContentLikeResponse) validateContentID(formats strfmt.Registry) error {

	if err := validate.Required("contentId", "body", m.ContentID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentLikeResponse) validateLikeStatus(formats strfmt.Registry) error {

	if err := validate.Required("likeStatus", "body", m.LikeStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentLikeResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentLikeResponse) UnmarshalBinary(b []byte) error {
	var res ModelsContentLikeResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
