// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// GeneratedGetAppV1Response Generated get app V1 response
//
// swagger:model Generated get app V1 response.
type GeneratedGetAppV1Response struct {

	// appid
	AppID string `json:"appId,omitempty"`

	// appname
	AppName string `json:"appName,omitempty"`

	// apprepoarn
	AppRepoArn string `json:"appRepoArn,omitempty"`

	// apprepourl
	AppRepoURL string `json:"appRepoUrl,omitempty"`

	// appstatus
	AppStatus string `json:"appStatus,omitempty"`

	// app_release_status
	AppReleaseStatus string `json:"app_release_status,omitempty"`

	// basepath
	BasePath string `json:"basePath,omitempty"`

	// createdat
	CreatedAt string `json:"createdAt,omitempty"`

	// deletedat
	DeletedAt string `json:"deletedAt,omitempty"`

	// deploymentcreatedat
	// Required: true
	DeploymentCreatedAt *string `json:"deploymentCreatedAt"`

	// deploymentid
	// Required: true
	DeploymentID *string `json:"deploymentId"`

	// deploymentimagetag
	// Required: true
	DeploymentImageTag *string `json:"deploymentImageTag"`

	// deployment_status
	DeploymentStatus string `json:"deployment_status,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// message
	Message string `json:"message,omitempty"`

	// scenario
	Scenario string `json:"scenario,omitempty"`

	// servicepublicurl
	ServicePublicURL string `json:"servicePublicURL,omitempty"`

	// serviceurl
	ServiceURL string `json:"serviceURL,omitempty"`

	// status
	Status string `json:"status,omitempty"`

	// updatedat
	UpdatedAt string `json:"updatedAt,omitempty"`
}

// Validate validates this Generated get app V1 response
func (m *GeneratedGetAppV1Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeploymentCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateDeploymentImageTag(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *GeneratedGetAppV1Response) validateDeploymentCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("deploymentCreatedAt", "body", m.DeploymentCreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetAppV1Response) validateDeploymentID(formats strfmt.Registry) error {

	if err := validate.Required("deploymentId", "body", m.DeploymentID); err != nil {
		return err
	}

	return nil
}

func (m *GeneratedGetAppV1Response) validateDeploymentImageTag(formats strfmt.Registry) error {

	if err := validate.Required("deploymentImageTag", "body", m.DeploymentImageTag); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetAppV1Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetAppV1Response) UnmarshalBinary(b []byte) error {
	var res GeneratedGetAppV1Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
