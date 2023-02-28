// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReasons

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateReasonGroupCmd represents the UpdateReasonGroup command
var UpdateReasonGroupCmd = &cobra.Command{
	Use:   "updateReasonGroup",
	Short: "Update reason group",
	Long:  `Update reason group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiUpdateReasonGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reasons.UpdateReasonGroupParams{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, errOK := adminReasonsService.UpdateReasonGroupShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateReasonGroupCmd.Flags().String("body", "", "Body")
	_ = UpdateReasonGroupCmd.MarkFlagRequired("body")
	UpdateReasonGroupCmd.Flags().String("groupId", "", "Group id")
	_ = UpdateReasonGroupCmd.MarkFlagRequired("groupId")
	UpdateReasonGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateReasonGroupCmd.MarkFlagRequired("namespace")
}
