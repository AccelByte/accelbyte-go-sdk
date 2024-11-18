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

// ApimodelGetAppImageListV2DataItemImageScanStatus Apimodel get app image list V2 data item image scan status
//
// swagger:model Apimodel get app image list V2 data item image scan status.
type ApimodelGetAppImageListV2DataItemImageScanStatus struct {

	// description
	Description string `json:"description,omitempty"`

	// status
	// Required: true
	Status *string `json:"status"`
}

// Validate validates this Apimodel get app image list V2 data item image scan status
func (m *ApimodelGetAppImageListV2DataItemImageScanStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateStatus(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetAppImageListV2DataItemImageScanStatus) validateStatus(formats strfmt.Registry) error {

	if err := validate.Required("status", "body", m.Status); err != nil {
		return err
	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItemImageScanStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItemImageScanStatus) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppImageListV2DataItemImageScanStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
