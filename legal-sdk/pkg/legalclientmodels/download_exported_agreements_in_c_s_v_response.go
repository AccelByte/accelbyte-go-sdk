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

// DownloadExportedAgreementsInCSVResponse Download exported agreements in CSV response
//
// swagger:model Download exported agreements in CSV response.
type DownloadExportedAgreementsInCSVResponse struct {

	// Flag indicating whether the export process has been completed.
	// Required: true
	Done *bool `json:"done"`

	// Download url for CSV file, only available once the export process has been completed.
	DownloadURL string `json:"downloadUrl,omitempty"`
}

// Validate validates this Download exported agreements in CSV response
func (m *DownloadExportedAgreementsInCSVResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDone(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *DownloadExportedAgreementsInCSVResponse) validateDone(formats strfmt.Registry) error {

	if err := validate.Required("done", "body", m.Done); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *DownloadExportedAgreementsInCSVResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *DownloadExportedAgreementsInCSVResponse) UnmarshalBinary(b []byte) error {
	var res DownloadExportedAgreementsInCSVResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
