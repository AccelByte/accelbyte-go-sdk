// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package policies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetDefaultPolicy2Cmd represents the SetDefaultPolicy2 command
var SetDefaultPolicy2Cmd = &cobra.Command{
	Use:   "setDefaultPolicy2",
	Short: "Set default policy 2",
	Long:  `Set default policy 2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		input := &policies.SetDefaultPolicy2Params{
			PolicyID: policyId,
		}
		errInput := policiesService.SetDefaultPolicy2Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SetDefaultPolicy2Cmd.Flags().String("policyId", "", "Policy id")
	_ = SetDefaultPolicy2Cmd.MarkFlagRequired("policyId")
}
