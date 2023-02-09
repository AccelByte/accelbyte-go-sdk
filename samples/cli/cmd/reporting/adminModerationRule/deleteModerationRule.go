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

// DeleteModerationRuleCmd represents the DeleteModerationRule command
var DeleteModerationRuleCmd = &cobra.Command{
	Use:   "deleteModerationRule",
	Short: "Delete moderation rule",
	Long:  `Delete moderation rule`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleId, _ := cmd.Flags().GetString("ruleId")
		input := &admin_moderation_rule.DeleteModerationRuleParams{
			Namespace: namespace,
			RuleID:    ruleId,
		}
		errInput := adminModerationRuleService.DeleteModerationRuleShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteModerationRuleCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteModerationRuleCmd.MarkFlagRequired("namespace")
	DeleteModerationRuleCmd.Flags().String("ruleId", "", "Rule id")
	_ = DeleteModerationRuleCmd.MarkFlagRequired("ruleId")
}
