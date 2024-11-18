// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclientmodels

import (
	"strconv"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// ApimodelGetAppImageListV2Response Apimodel get app image list V2 response
//
// swagger:model Apimodel get app image list V2 response.
type ApimodelGetAppImageListV2Response struct {

	// data
	// Required: true
	Data []*ApimodelGetAppImageListV2DataItem `json:"data"`

	// paging
	Paging *GeneratedPagination `json:"paging,omitempty"`

	// vulnerabilitystatus
	// Required: true
	VulnerabilityStatus *string `json:"vulnerabilityStatus"`
}

// Validate validates this Apimodel get app image list V2 response
func (m *ApimodelGetAppImageListV2Response) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateData(formats); err != nil {
		res = append(res, err)
	}
	if err := m.validateVulnerabilityStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetAppImageListV2Response) validateData(formats strfmt.Registry) error {

	if err := validate.Required("data", "body", m.Data); err != nil {
		return err
	}

	for i := 0; i < len(m.Data); i++ {
		if swag.IsZero(m.Data[i]) { // not required
			continue
		}

		if m.Data[i] != nil {
			if err := m.Data[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("data" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

func (m *ApimodelGetAppImageListV2Response) validateVulnerabilityStatus(formats strfmt.Registry) error {

	if err := validate.Required("vulnerabilityStatus", "body", m.VulnerabilityStatus); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2Response) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2Response) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppImageListV2Response
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
