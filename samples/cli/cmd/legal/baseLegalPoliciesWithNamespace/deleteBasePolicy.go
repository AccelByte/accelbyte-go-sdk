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

// DeleteBasePolicyCmd represents the DeleteBasePolicy command
var DeleteBasePolicyCmd = &cobra.Command{
	Use:   "deleteBasePolicy",
	Short: "Delete base policy",
	Long:  `Delete base policy`,
	RunE: func(cmd *cobra.Command, args []string) error {
		baseLegalPoliciesWithNamespaceService := &legal.BaseLegalPoliciesWithNamespaceService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		basePolicyId, _ := cmd.Flags().GetString("basePolicyId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &base_legal_policies_with_namespace.DeleteBasePolicyParams{
			BasePolicyID: basePolicyId,
			Namespace:    namespace,
		}
		errNoContent := baseLegalPoliciesWithNamespaceService.DeleteBasePolicyShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteBasePolicyCmd.Flags().String("basePolicyId", "", "Base policy id")
	_ = DeleteBasePolicyCmd.MarkFlagRequired("basePolicyId")
	DeleteBasePolicyCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteBasePolicyCmd.MarkFlagRequired("namespace")
}
