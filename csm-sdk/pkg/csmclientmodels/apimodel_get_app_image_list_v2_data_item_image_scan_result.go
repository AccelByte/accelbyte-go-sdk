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

// ApimodelGetAppImageListV2DataItemImageScanResult Apimodel get app image list V2 data item image scan result
//
// swagger:model Apimodel get app image list V2 data item image scan result.
type ApimodelGetAppImageListV2DataItemImageScanResult struct {

	// findingseveritycounts
	// Required: true
	FindingSeverityCounts map[string]int64 `json:"findingSeverityCounts"`

	// findings
	// Required: true
	Findings []*ModelImageScanFinding `json:"findings"`
}

// Validate validates this Apimodel get app image list V2 data item image scan result
func (m *ApimodelGetAppImageListV2DataItemImageScanResult) Validate(formats strfmt.Registry) error {
	var res []error

	if err := m.validateFindings(formats); err != nil {
		res = append(res, err)
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

func (m *ApimodelGetAppImageListV2DataItemImageScanResult) validateFindings(formats strfmt.Registry) error {

	if err := validate.Required("findings", "body", m.Findings); err != nil {
		return err
	}

	for i := 0; i < len(m.Findings); i++ {
		if swag.IsZero(m.Findings[i]) { // not required
			continue
		}

		if m.Findings[i] != nil {
			if err := m.Findings[i].Validate(formats); err != nil {
				if ve, ok := err.(*errors.Validation); ok {
					return ve.ValidateName("findings" + "." + strconv.Itoa(i))
				}
				return err
			}
		}

	}

	return nil
}

// MarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItemImageScanResult) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ApimodelGetAppImageListV2DataItemImageScanResult) UnmarshalBinary(b []byte) error {
	var res ApimodelGetAppImageListV2DataItemImageScanResult
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
