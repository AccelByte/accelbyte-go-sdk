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

// GeneratedGetAppImageListV1DataItemImageScanStatus Generated get app image list V1 data item image scan status
//
// swagger:model Generated get app image list V1 data item image scan status.
type GeneratedGetAppImageListV1DataItemImageScanStatus struct {

	// description
	Description string `json:"description,omitempty"`

	// status
	Status string `json:"status,omitempty"`
}

// Validate validates this Generated get app image list V1 data item image scan status
func (m *GeneratedGetAppImageListV1DataItemImageScanStatus) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

// MarshalBinary interface implementation
func (m *GeneratedGetAppImageListV1DataItemImageScanStatus) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *GeneratedGetAppImageListV1DataItemImageScanStatus) UnmarshalBinary(b []byte) error {
	var res GeneratedGetAppImageListV1DataItemImageScanStatus
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
