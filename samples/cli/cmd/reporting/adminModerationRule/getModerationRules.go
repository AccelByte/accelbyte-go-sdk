// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminModerationRule

import (
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_moderation_rule"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetModerationRulesCmd represents the GetModerationRules command
var GetModerationRulesCmd = &cobra.Command{
	Use:   "getModerationRules",
	Short: "Get moderation rules",
	Long:  `Get moderation rules`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		category, _ := cmd.Flags().GetString("category")
		extensionCategory, _ := cmd.Flags().GetString("extensionCategory")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_moderation_rule.GetModerationRulesParams{
			Namespace:         namespace,
			Category:          &category,
			ExtensionCategory: &extensionCategory,
			Limit:             &limit,
			Offset:            &offset,
		}
		ok, errOK := adminModerationRuleService.GetModerationRulesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetModerationRulesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetModerationRulesCmd.MarkFlagRequired("namespace")
	GetModerationRulesCmd.Flags().String("category", "", "Category")
	GetModerationRulesCmd.Flags().String("extensionCategory", "", "Extension category")
	GetModerationRulesCmd.Flags().Int64("limit", 20, "Limit")
	GetModerationRulesCmd.Flags().Int64("offset", 0, "Offset")
}
