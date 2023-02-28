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

// DeleteReasonCmd represents the DeleteReason command
var DeleteReasonCmd = &cobra.Command{
	Use:   "deleteReason",
	Short: "Delete reason",
	Long:  `Delete reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		reasonId, _ := cmd.Flags().GetString("reasonId")
		input := &admin_reasons.DeleteReasonParams{
			Namespace: namespace,
			ReasonID:  reasonId,
		}
		errNoContent := adminReasonsService.DeleteReasonShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteReasonCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteReasonCmd.MarkFlagRequired("namespace")
	DeleteReasonCmd.Flags().String("reasonId", "", "Reason id")
	_ = DeleteReasonCmd.MarkFlagRequired("reasonId")
}
