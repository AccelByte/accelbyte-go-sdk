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

// ApimodelAppItem Apimodel app item
//
// swagger:model Apimodel app item.
type ApimodelAppItem struct {

	// appid
	// Required: true
	AppID *string `json:"appId"`

	// appname
	// Required: true
	AppName *string `json:"appName"`

	// apprepoarn
	AppRepoArn string `json:"appRepoArn,omitempty"`

	// apprepourl
	AppRepoURL string `json:"appRepoUrl,omitempty"`

	// appstatus
	// Required: true
	AppStatus *string `json:"appStatus"`

	// autoscaling
	Autoscaling *ApimodelAutoscalingResponse `json:"autoscaling,omitempty"`

	// basepath
	BasePath string `json:"basePath,omitempty"`

	// cpu
	CPU *ApimodelCPUResponse `json:"cpu,omitempty"`

	// createdat
	// Required: true
	CreatedAt *string `json:"createdAt"`

	// deletedat
	DeletedAt string `json:"deletedAt,omitempty"`

	// deploymentcreatedat
	DeploymentCreatedAt string `json:"deploymentCreatedAt,omitempty"`

	// deploymentid
	DeploymentID string `json:"deploymentId,omitempty"`

	// deploymentimagetag
	DeploymentImageTag string `json:"deploymentImageTag,omitempty"`

	// description
	Description string `json:"description,omitempty"`

	// memory
	Memory *ApimodelMemoryResponse `json:"memory,omitempty"`

	// message
	Message string `json:"message,omitempty"`

	// replica
	Replica *ApimodelReplicaResponse `json:"replica,omitempty"`

	// scenario
	// Required: true
	Scenario *string `json:"scenario"`

	// servicepublicurl
	ServicePublicURL string `json:"servicePublicURL,omitempty"`

	// serviceurl
	ServiceURL string `json:"serviceURL,omitempty"`

	// updatedat
	// Required: true
	UpdatedAt *string `json:"updatedAt"`
}

// Validate validates this Apimodel app item
func (m *ApimodelAppItem) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAppID(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppName(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateAppStatus(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateCreatedAt(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateScenario(formats); err != nil {
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

func (m *ApimodelAppItem) validateAppID(formats strfmt.Registry) error {

	if err := validate.Required("appId", "body", m.AppID); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItem) validateAppName(formats strfmt.Registry) error {

	if err := validate.Required("appName", "body", m.AppName); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItem) validateAppStatus(formats strfmt.Registry) error {

	if err := validate.Required("appStatus", "body", m.AppStatus); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItem) validateCreatedAt(formats strfmt.Registry) error {

	if err := validate.Required("createdAt", "body", m.CreatedAt); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItem) validateScenario(formats strfmt.Registry) error {

	if err := validate.Required("scenario", "body", m.Scenario); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelAppItem) validateUpdatedAt(formats strfmt.Registry) error {

	if err := validate.Required("updatedAt", "body", m.UpdatedAt); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelAppItem) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelAppItem) UnmarshalBinary(b []byte) error {
	var res ApimodelAppItem
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
