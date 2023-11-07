// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsContentDownloaderResponse Models content downloader response
//
// swagger:model Models content downloader response.
type ModelsContentDownloaderResponse struct {

	// contentid
	// Required: true
	ContentID *string `json:"contentId"`

	// createdtime
	// Required: true
	// Format: date-time
	CreatedTime strfmt.DateTime `json:"createdTime"`

	// downloadedby
	// Required: true
	DownloadedBy *string `json:"downloadedBy"`

	// namespace
	// Required: true
	Namespace *string `json:"namespace"`
}

// Validate validates this Models content downloader response
func (m *ModelsContentDownloaderResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateContentID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedTime(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDownloadedBy(formats); err != nil {
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

func (m *ModelsContentDownloaderResponse) validateContentID(formats strfmt.Registry) error {

	if err := validate.Required("contentId", "body", m.ContentID); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloaderResponse) validateCreatedTime(formats strfmt.Registry) error {

	if err := validate.Required("createdTime", "body", strfmt.DateTime(m.CreatedTime)); err != nil {
		return err
	}

	if err := validate.FormatOf("createdTime", "body", "date-time", m.CreatedTime.String(), formats); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloaderResponse) validateDownloadedBy(formats strfmt.Registry) error {

	if err := validate.Required("downloadedBy", "body", m.DownloadedBy); err != nil {
		return err
	}

	return nil
}

func (m *ModelsContentDownloaderResponse) validateNamespace(formats strfmt.Registry) error {

	if err := validate.Required("namespace", "body", m.Namespace); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsContentDownloaderResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsContentDownloaderResponse) UnmarshalBinary(b []byte) error {
	var res ModelsContentDownloaderResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
