// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dslogmanagerclientmodels

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsMetadataServersRequest Models metadata servers request
//
// swagger:model Models metadata servers request.
type ModelsMetadataServersRequest struct {

	// pod_names
	// Required: true
	PodNames []string `json:"pod_names"`
}

// Validate validates this Models metadata servers request
func (m *ModelsMetadataServersRequest) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePodNames(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsMetadataServersRequest) validatePodNames(formats strfmt.Registry) error {

	if err := validate.Required("pod_names", "body", m.PodNames); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsMetadataServersRequest) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsMetadataServersRequest) UnmarshalBinary(b []byte) error {
	var res ModelsMetadataServersRequest
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
