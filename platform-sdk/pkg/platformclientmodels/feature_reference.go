// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platformclientmodels

import (
	"encoding/json"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
	"github.com/go-openapi/validate"
)

// FeatureReference Feature reference
//
// swagger:model Feature reference.
type FeatureReference struct {

	// feature
	// Enum: ['CAMPAIGN', 'CATALOG', 'DLC', 'ENTITLEMENT', 'IAP', 'REWARD']
	Feature string `json:"feature,omitempty"`

	// references
	References []*ModuleReference `json:"references,omitempty"`
}

// Validate validates this Feature reference
func (m *FeatureReference) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var featureReferenceTypeFeaturePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "CATALOG", "DLC", "ENTITLEMENT", "IAP", "REWARD"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		featureReferenceTypeFeaturePropEnum = append(featureReferenceTypeFeaturePropEnum, v)
	}
}

const (

	// FeatureReferenceFeatureCAMPAIGN captures enum value "CAMPAIGN"
	FeatureReferenceFeatureCAMPAIGN string = "CAMPAIGN"

	// FeatureReferenceFeatureCATALOG captures enum value "CATALOG"
	FeatureReferenceFeatureCATALOG string = "CATALOG"

	// FeatureReferenceFeatureDLC captures enum value "DLC"
	FeatureReferenceFeatureDLC string = "DLC"

	// FeatureReferenceFeatureENTITLEMENT captures enum value "ENTITLEMENT"
	FeatureReferenceFeatureENTITLEMENT string = "ENTITLEMENT"

	// FeatureReferenceFeatureIAP captures enum value "IAP"
	FeatureReferenceFeatureIAP string = "IAP"

	// FeatureReferenceFeatureREWARD captures enum value "REWARD"
	FeatureReferenceFeatureREWARD string = "REWARD"
)

// prop value enum
func (m *FeatureReference) validateFeatureEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, featureReferenceTypeFeaturePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *FeatureReference) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *FeatureReference) UnmarshalBinary(b []byte) error {
	var res FeatureReference
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
