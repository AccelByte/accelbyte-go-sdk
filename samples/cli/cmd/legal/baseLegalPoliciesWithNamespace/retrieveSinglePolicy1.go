// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package baseLegalPoliciesWithNamespace

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/base_legal_policies_with_namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveSinglePolicy1Cmd represents the RetrieveSinglePolicy1 command
var RetrieveSinglePolicy1Cmd = &cobra.Command{
	Use:   "retrieveSinglePolicy1",
	Short: "Retrieve single policy 1",
	Long:  `Retrieve single policy 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.RetrieveSinglePolicy1Params{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		ok, errOK := baseLegalPoliciesWithNamespaceService.RetrieveSinglePolicy1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RetrieveSinglePolicy1Cmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = RetrieveSinglePolicy1Cmd.MarkFlagRequired("basePolicyId")
	RetrieveSinglePolicy1Cmd.Flags().String("namespace", "", "Namespace")
	_ = RetrieveSinglePolicy1Cmd.MarkFlagRequired("namespace")
}
