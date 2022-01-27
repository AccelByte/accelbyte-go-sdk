// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package policies

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/policies"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// setDefaultPolicy1Cmd represents the setDefaultPolicy1 command
var setDefaultPolicy1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := policiesService.SetDefaultPolicy1(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(setDefaultPolicy1Cmd)
	setDefaultPolicy1Cmd.Flags().StringP("policyId", "pd", " ", "Policy id")
	_ = setDefaultPolicy1Cmd.MarkFlagRequired("policyId")
}
