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

// ApimodelCSMAppLimitsResponse Apimodel CSM app limits response
//
// swagger:model Apimodel CSM app limits response.
type ApimodelCSMAppLimitsResponse struct {

	// autoscaling
	// Required: true
	Autoscaling *ModelCSMAutoscalingDefaults `json:"autoscaling"`

	// extendappcpulimit
	// Required: true
	// Format: int32
	ExtendAppCPULimit *int32 `json:"extendAppCPULimit"`

	// extendappeventhandlercpulimit
	// Required: true
	// Format: int32
	ExtendAppEventHandlerCPULimit *int32 `json:"extendAppEventHandlerCPULimit"`

	// extendappmemorylimit
	// Required: true
	// Format: int32
	ExtendAppMemoryLimit *int32 `json:"extendAppMemoryLimit"`

	// extendappreplicalimit
	// Required: true
	// Format: int32
	ExtendAppReplicaLimit *int32 `json:"extendAppReplicaLimit"`

	// extendappeeventhandlermemorylimit
	// Required: true
	// Format: int32
	ExtendAppeEventHandlerMemoryLimit *int32 `json:"extendAppeEventHandlerMemoryLimit"`

	// maxsubscribercount
	// Required: true
	// Format: int32
	MaxSubscriberCount *int32 `json:"maxSubscriberCount"`
}

// Validate validates this Apimodel CSM app limits response
func (m *ApimodelCSMAppLimitsResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateAutoscaling(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendAppCPULimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendAppEventHandlerCPULimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendAppMemoryLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendAppReplicaLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateExtendAppeEventHandlerMemoryLimit(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateMaxSubscriberCount(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateAutoscaling(formats strfmt.Registry) error {

	if err := validate.Required("autoscaling", "body", m.Autoscaling); err != nil {
		return err
	}

	if m.Autoscaling != nil {
		if err := m.Autoscaling.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("autoscaling")
			}
			return err
		}
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateExtendAppCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("extendAppCPULimit", "body", m.ExtendAppCPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateExtendAppEventHandlerCPULimit(formats strfmt.Registry) error {

	if err := validate.Required("extendAppEventHandlerCPULimit", "body", m.ExtendAppEventHandlerCPULimit); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateExtendAppMemoryLimit(formats strfmt.Registry) error {

	if err := validate.Required("extendAppMemoryLimit", "body", m.ExtendAppMemoryLimit); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateExtendAppReplicaLimit(formats strfmt.Registry) error {

	if err := validate.Required("extendAppReplicaLimit", "body", m.ExtendAppReplicaLimit); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateExtendAppeEventHandlerMemoryLimit(formats strfmt.Registry) error {

	if err := validate.Required("extendAppeEventHandlerMemoryLimit", "body", m.ExtendAppeEventHandlerMemoryLimit); err != nil {
		return err
	}

	return nil
}

func (m *ApimodelCSMAppLimitsResponse) validateMaxSubscriberCount(formats strfmt.Registry) error {

	if err := validate.Required("maxSubscriberCount", "body", m.MaxSubscriberCount); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelCSMAppLimitsResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelCSMAppLimitsResponse) UnmarshalBinary(b []byte) error {
	var res ApimodelCSMAppLimitsResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
