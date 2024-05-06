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

// InitiateExportAgreementsToCSVResponse Initiate export agreements to CSV response
//
// swagger:model Initiate export agreements to CSV response.
type InitiateExportAgreementsToCSVResponse struct {

	// Export Id is a combination of request timestamp, start time and end time.
	// Required: true
	ExportID *string `json:"exportId"`

	// Processing the export
	// Required: true
	Processing *bool `json:"processing"`
}

// Validate validates this Initiate export agreements to CSV response
func (m *InitiateExportAgreementsToCSVResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateExportID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateProcessing(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *InitiateExportAgreementsToCSVResponse) validateExportID(formats strfmt.Registry) error {

	if err := validate.Required("exportId", "body", m.ExportID); err != nil {
		return err
	}

	return nil
}

func (m *InitiateExportAgreementsToCSVResponse) validateProcessing(formats strfmt.Registry) error {

	if err := validate.Required("processing", "body", m.Processing); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *InitiateExportAgreementsToCSVResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *InitiateExportAgreementsToCSVResponse) UnmarshalBinary(b []byte) error {
	var res InitiateExportAgreementsToCSVResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
