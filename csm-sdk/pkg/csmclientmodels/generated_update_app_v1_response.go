// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// GeneratedUpdateAppV1Response Generated update app V1 response
//
// swagger:model Generated update app V1 response.
type GeneratedUpdateAppV1Response struct {

	// appid
	AppID string `json:"appId,omitempty"`

	// appname
	AppName string `json:"appName,omitempty"`

	// apprepoarn
	AppRepoArn string `json:"appRepoArn,omitempty"`

	// apprepourl
	AppRepoURL string `json:"appRepoUrl,omitempty"`

	// deletedat
	DeletedAt string `json:"deletedAt,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// message
	Message string `json:"message,omitempty"`

	// scenario
	Scenario string `json:"scenario,omitempty"`

	// serviceurl
	ServiceURL string `json:"serviceURL,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Generated update app V1 response
func (m *GeneratedUpdateAppV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedUpdateAppV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedUpdateAppV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedUpdateAppV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
