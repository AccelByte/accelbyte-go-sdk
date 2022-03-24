// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetDefaultPolicy1Cmd represents the SetDefaultPolicy1 command
var SetDefaultPolicy1Cmd = &cobra.Command{
	Use:   "setDefaultPolicy1",
	Short: "Set default policy 1",
	Long:  `Set default policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		policiesService := &legal.PoliciesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		policyId, _ := cmd.Flags().GetString("policyId")
		input := &policies.SetDefaultPolicy1Params{
			PolicyID: policyId,
		}
		errInput := policiesService.SetDefaultPolicy1Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	SetDefaultPolicy1Cmd.Flags().StringP("policyId", "", "", "Policy id")
	_ = SetDefaultPolicy1Cmd.MarkFlagRequired("policyId")
}
