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

// CreateModerationRuleCmd represents the CreateModerationRule command
var CreateModerationRuleCmd = &cobra.Command{
	Use:   "createModerationRule",
	Short: "Create moderation rule",
	Long:  `Create moderation rule`,
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
		input := &admin_moderation_rule.CreateModerationRuleParams{
			Body:      body,
			Namespace: namespace,
		}
		errInput := adminModerationRuleService.CreateModerationRuleShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	CreateModerationRuleCmd.Flags().String("body", "", "Body")
	_ = CreateModerationRuleCmd.MarkFlagRequired("body")
	CreateModerationRuleCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateModerationRuleCmd.MarkFlagRequired("namespace")
}
