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

// ModuleReference Module reference
//
// swagger:model Module reference.
type ModuleReference struct {

	// module
	// Enum: ['CAMPAIGN', 'CHALLENGE_CONFIGURATIONS', 'DLC_CONFIGURATION', 'ENTITLEMENT', 'ITEM', 'ITEM_MAPPING', 'REWARD_CONFIGURATION', 'SEASON_PASS_CODE', 'SEASON_PASS_REWARD', 'SEASON_PASS_TIER', 'SECTION']
	Module string `json:"module,omitempty"`

	// references
	References []*ItemReference `json:"references,omitempty"`
}

// Validate validates this Module reference
func (m *ModuleReference) Validate(formats strfmt.Registry) error {
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}

var moduleReferenceTypeModulePropEnum []interface{}

func init() {
	var res []string
	if err := json.Unmarshal([]byte(`["CAMPAIGN", "CHALLENGE_CONFIGURATIONS", "DLC_CONFIGURATION", "ENTITLEMENT", "ITEM", "ITEM_MAPPING", "REWARD_CONFIGURATION", "SEASON_PASS_CODE", "SEASON_PASS_REWARD", "SEASON_PASS_TIER", "SECTION"]`), &res); err != nil {
		panic(err)
	}
	for _, v := range res {
		moduleReferenceTypeModulePropEnum = append(moduleReferenceTypeModulePropEnum, v)
	}
}

const (

	// ModuleReferenceModuleCAMPAIGN captures enum value "CAMPAIGN"
	ModuleReferenceModuleCAMPAIGN string = "CAMPAIGN"

	// ModuleReferenceModuleCHALLENGECONFIGURATIONS captures enum value "CHALLENGE_CONFIGURATIONS"
	ModuleReferenceModuleCHALLENGECONFIGURATIONS string = "CHALLENGE_CONFIGURATIONS"

	// ModuleReferenceModuleDLCCONFIGURATION captures enum value "DLC_CONFIGURATION"
	ModuleReferenceModuleDLCCONFIGURATION string = "DLC_CONFIGURATION"

	// ModuleReferenceModuleENTITLEMENT captures enum value "ENTITLEMENT"
	ModuleReferenceModuleENTITLEMENT string = "ENTITLEMENT"

	// ModuleReferenceModuleITEM captures enum value "ITEM"
	ModuleReferenceModuleITEM string = "ITEM"

	// ModuleReferenceModuleITEMMAPPING captures enum value "ITEM_MAPPING"
	ModuleReferenceModuleITEMMAPPING string = "ITEM_MAPPING"

	// ModuleReferenceModuleREWARDCONFIGURATION captures enum value "REWARD_CONFIGURATION"
	ModuleReferenceModuleREWARDCONFIGURATION string = "REWARD_CONFIGURATION"

	// ModuleReferenceModuleSEASONPASSCODE captures enum value "SEASON_PASS_CODE"
	ModuleReferenceModuleSEASONPASSCODE string = "SEASON_PASS_CODE"

	// ModuleReferenceModuleSEASONPASSREWARD captures enum value "SEASON_PASS_REWARD"
	ModuleReferenceModuleSEASONPASSREWARD string = "SEASON_PASS_REWARD"

	// ModuleReferenceModuleSEASONPASSTIER captures enum value "SEASON_PASS_TIER"
	ModuleReferenceModuleSEASONPASSTIER string = "SEASON_PASS_TIER"

	// ModuleReferenceModuleSECTION captures enum value "SECTION"
	ModuleReferenceModuleSECTION string = "SECTION"
)

// prop value enum
func (m *ModuleReference) validateModuleEnum(path, location string, value string) error {
	if err := validate.EnumCase(path, location, value, moduleReferenceTypeModulePropEnum, true); err != nil {
		return err
	}
	return nil
}

// MarshalBinary interface implementation
func (m *ModuleReference) MarshalBinary() ([]byte, error) {
	if m == nil {
		return nil, nil
	}
	return swag.WriteJSON(m)
}

// UnmarshalBinary interface implementation
func (m *ModuleReference) UnmarshalBinary(b []byte) error {
	var res ModuleReference
	if err := swag.ReadJSON(b, &res); err != nil {
		return err
	}
	*m = res
	return nil
}
