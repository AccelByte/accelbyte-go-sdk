// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReasons

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetUnusedReasonsCmd represents the AdminGetUnusedReasons command
var AdminGetUnusedReasonsCmd = &cobra.Command{
	Use:   "adminGetUnusedReasons",
	Short: "Admin get unused reasons",
	Long:  `Admin get unused reasons`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		extensionCategory, _ := cmd.Flags().GetString("extensionCategory")
		input := &admin_reasons.AdminGetUnusedReasonsParams{
			Namespace:         namespace,
			ExtensionCategory: &extensionCategory,
			Category:          category,
		}
		ok, err := adminReasonsService.AdminGetUnusedReasonsShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminGetUnusedReasonsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUnusedReasonsCmd.MarkFlagRequired("namespace")
	AdminGetUnusedReasonsCmd.Flags().String("extensionCategory", "", "Extension category")
	AdminGetUnusedReasonsCmd.Flags().String("category", "", "Category")
	_ = AdminGetUnusedReasonsCmd.MarkFlagRequired("category")
}
