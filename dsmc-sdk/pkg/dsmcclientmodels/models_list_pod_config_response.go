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

// ModelsListPodConfigResponse Models list pod config response
//
// swagger:model Models list pod config response.
type ModelsListPodConfigResponse struct {

	// paging
	// Required: true
	Paging *ModelsPagingCursor `json:"paging"`

	// pod_configs
	// Required: true
	PodConfigs []*ModelsPodConfigRecord `json:"pod_configs"`
}

// Validate validates this Models list pod config response
func (m *ModelsListPodConfigResponse) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validatePaging(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validatePodConfigs(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ModelsListPodConfigResponse) validatePaging(formats strfmt.Registry) error {

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

func (m *ModelsListPodConfigResponse) validatePodConfigs(formats strfmt.Registry) error {

	if err := validate.Required("pod_configs", "body", m.PodConfigs); err != nil {
		return err
	}

	for i := 0; i < len(m.PodConfigs); i++ {
		if swag.IsZero(m.PodConfigs[i]) { // not required
			continue
		}

		if m.PodConfigs[i] != nil {
			if err := m.PodConfigs[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("pod_configs" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ModelsListPodConfigResponse) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModelsListPodConfigResponse) UnmarshalBinary(b []byte) error {
	var res ModelsListPodConfigResponse
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
