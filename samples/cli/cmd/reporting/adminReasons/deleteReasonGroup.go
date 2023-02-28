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

// DeleteReasonGroupCmd represents the DeleteReasonGroup command
var DeleteReasonGroupCmd = &cobra.Command{
	Use:   "deleteReasonGroup",
	Short: "Delete reason group",
	Long:  `Delete reason group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reasons.DeleteReasonGroupParams{
			GroupID:   groupId,
			Namespace: namespace,
		}
		errNoContent := adminReasonsService.DeleteReasonGroupShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteReasonGroupCmd.Flags().String("groupId", "", "Group id")
	_ = DeleteReasonGroupCmd.MarkFlagRequired("groupId")
	DeleteReasonGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteReasonGroupCmd.MarkFlagRequired("namespace")
}
