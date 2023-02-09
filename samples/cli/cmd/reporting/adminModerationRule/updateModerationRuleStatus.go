// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminModerationRule

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_moderation_rule"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateModerationRuleStatusCmd represents the UpdateModerationRuleStatus command
var UpdateModerationRuleStatusCmd = &cobra.Command{
	Use:   "updateModerationRuleStatus",
	Short: "Update moderation rule status",
	Long:  `Update moderation rule status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiModerationRuleActiveRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleId, _ := cmd.Flags().GetString("ruleId")
		input := &admin_moderation_rule.UpdateModerationRuleStatusParams{
			Body:      body,
			Namespace: namespace,
			RuleID:    ruleId,
		}
		errInput := adminModerationRuleService.UpdateModerationRuleStatusShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	UpdateModerationRuleStatusCmd.Flags().String("body", "", "Body")
	_ = UpdateModerationRuleStatusCmd.MarkFlagRequired("body")
	UpdateModerationRuleStatusCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateModerationRuleStatusCmd.MarkFlagRequired("namespace")
	UpdateModerationRuleStatusCmd.Flags().String("ruleId", "", "Rule id")
	_ = UpdateModerationRuleStatusCmd.MarkFlagRequired("ruleId")
}
