// Code generated by go-swagger; DO NOT EDIT.

package dslogmanagerclientmodels

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsBatchDownloadLogsRequest models batch download logs request
//
// swagger:model models.BatchDownloadLogsRequest
type ModelsBatchDownloadLogsRequest struct {

	// downloads
	// Required: true
	Downloads []*ModelsDownloadLogsRequest `json:"Downloads"`
}

// Validate validates this models batch download logs request
func (m *ModelsBatchDownloadLogsRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDownloads(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsBatchDownloadLogsRequest) validateDownloads(formats strfmt.Registry) error {

	if err := validate.Required("Downloads", "body", m.Downloads); err != nil {
		return err
	}

	for i := 0; i < len(m.Downloads); i++ {
		if swag.IsZero(m.Downloads[i]) { // not required
			continue
		}

		if m.Downloads[i] != nil {
			if err := m.Downloads[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("Downloads" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsBatchDownloadLogsRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsBatchDownloadLogsRequest) UnmarshalBinary(b []byte) error {
	var res ModelsBatchDownloadLogsRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
