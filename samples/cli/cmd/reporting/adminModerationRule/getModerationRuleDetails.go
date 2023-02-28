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

// GetModerationRuleDetailsCmd represents the GetModerationRuleDetails command
var GetModerationRuleDetailsCmd = &cobra.Command{
	Use:   "getModerationRuleDetails",
	Short: "Get moderation rule details",
	Long:  `Get moderation rule details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleId, _ := cmd.Flags().GetString("ruleId")
		input := &admin_moderation_rule.GetModerationRuleDetailsParams{
			Namespace: namespace,
			RuleID:    ruleId,
		}
		ok, errOK := adminModerationRuleService.GetModerationRuleDetailsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetModerationRuleDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetModerationRuleDetailsCmd.MarkFlagRequired("namespace")
	GetModerationRuleDetailsCmd.Flags().String("ruleId", "", "Rule id")
	_ = GetModerationRuleDetailsCmd.MarkFlagRequired("ruleId")
}
