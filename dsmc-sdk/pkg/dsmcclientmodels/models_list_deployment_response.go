// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package dsmcclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ModelsListDeploymentResponse Models list deployment response
//
// swagger:model Models list deployment response.
type ModelsListDeploymentResponse struct {

	// deployments
	// Required: true
	Deployments []*ModelsDeploymentWithOverride `json:"deployments"`

	// paging
	// Required: true
	Paging *ModelsPagingCursor `json:"paging"`
}

// Validate validates this Models list deployment response
func (m *ModelsListDeploymentResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateDeployments(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListDeploymentResponse) validateDeployments(formats strfmt.Registry) error {

	if err := validate.Required("deployments", "body", m.Deployments); err != nil {
		return err
	}

	for i := 0; i < len(m.Deployments); i++ {
		if swag.IsZero(m.Deployments[i]) { // not required
			continue
		}

		if m.Deployments[i] != nil {
			if err := m.Deployments[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("deployments" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ModelsListDeploymentResponse) validatePaging(formats strfmt.Registry) error {

	if err := validate.Required("paging", "body", m.Paging); err != nil {
		return err
	}

	if m.Paging != nil {
		if err := m.Paging.Validate(formats); err != nil {
			if ve, ok := err.(*errors.Validation); ok {
				return ve.ValidateName("paging")
			}
			return err
		}
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListDeploymentResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListDeploymentResponse) UnmarshalBinary(b []byte) error {
	var res ModelsListDeploymentResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
