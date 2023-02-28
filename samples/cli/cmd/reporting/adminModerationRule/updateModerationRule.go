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

// UpdateModerationRuleCmd represents the UpdateModerationRule command
var UpdateModerationRuleCmd = &cobra.Command{
	Use:   "updateModerationRule",
	Short: "Update moderation rule",
	Long:  `Update moderation rule`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminModerationRuleService := &reporting.AdminModerationRuleService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiModerationRuleRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleId, _ := cmd.Flags().GetString("ruleId")
		input := &admin_moderation_rule.UpdateModerationRuleParams{
			Body:      body,
			Namespace: namespace,
			RuleID:    ruleId,
		}
		ok, errOK := adminModerationRuleService.UpdateModerationRuleShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateModerationRuleCmd.Flags().String("body", "", "Body")
	_ = UpdateModerationRuleCmd.MarkFlagRequired("body")
	UpdateModerationRuleCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateModerationRuleCmd.MarkFlagRequired("namespace")
	UpdateModerationRuleCmd.Flags().String("ruleId", "", "Rule id")
	_ = UpdateModerationRuleCmd.MarkFlagRequired("ruleId")
}
