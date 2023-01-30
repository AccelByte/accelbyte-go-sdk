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

// ModelsContentRequest models content request
//
// swagger:model models.ContentRequest
type ModelsContentRequest struct {

	// content type
	// Required: true
	ContentType *string `json:"contentType"`

	// custom attributes
	// Required: true
	CustomAttributes interface{} `json:"customAttributes"`

	// file extension
	// Required: true
	FileExtension *string `json:"fileExtension"`

	// name
	// Required: true
	Name *string `json:"name"`

	// payload
	// Required: true
	Payload *string `json:"payload"`

	// Preview is legacy code, please use Screenshot instead
	// Required: true
	Preview *string `json:"preview"`

	// preview metadata
	// Required: true
	PreviewMetadata *ModelsPreviewMetadata `json:"previewMetadata"`

	// sub type
	// Required: true
	SubType *string `json:"subType"`

	// tags
	// Required: true
	Tags []string `json:"tags"`

	// type
	// Required: true
	Type *string `json:"type"`

	// update content file
	// Required: true
	UpdateContentFile *bool `json:"updateContentFile"`
}

// Validate validates this models content request
func (m *ModelsContentRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateCustomAttributes(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateFileExtension(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateName(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePayload(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePreview(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validatePreviewMetadata(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateSubType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateTags(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateType(formats); err != nil {
		res = append(res, err)
	}

	if err := m.validateUpdateContentFile(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsContentRequest) validateContentType(formats strfmt.Registry) error {

	if err := validate.Required("contentType", "body", m.ContentType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateCustomAttributes(formats strfmt.Registry) error {

	if err := validate.Required("customAttributes", "body", m.CustomAttributes); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateFileExtension(formats strfmt.Registry) error {

	if err := validate.Required("fileExtension", "body", m.FileExtension); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateName(formats strfmt.Registry) error {

	if err := validate.Required("name", "body", m.Name); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validatePayload(formats strfmt.Registry) error {

	if err := validate.Required("payload", "body", m.Payload); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validatePreview(formats strfmt.Registry) error {

	if err := validate.Required("preview", "body", m.Preview); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validatePreviewMetadata(formats strfmt.Registry) error {

	if err := validate.Required("previewMetadata", "body", m.PreviewMetadata); err != nil {
		return err
	}

	if m.PreviewMetadata != nil {
		if err := m.PreviewMetadata.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("previewMetadata")
			}
			return err
		}
	}

	return nil
}

func (m *ModelsContentRequest) validateSubType(formats strfmt.Registry) error {

	if err := validate.Required("subType", "body", m.SubType); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateTags(formats strfmt.Registry) error {

	if err := validate.Required("tags", "body", m.Tags); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateType(formats strfmt.Registry) error {

	if err := validate.Required("type", "body", m.Type); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentRequest) validateUpdateContentFile(formats strfmt.Registry) error {

	if err := validate.Required("updateContentFile", "body", m.UpdateContentFile); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentRequest) UnmarshalBinary(b []byte) error {
	var res ModelsContentRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
