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

// UpdateReasonCmd represents the UpdateReason command
var UpdateReasonCmd = &cobra.Command{
	Use:   "updateReason",
	Short: "Update reason",
	Long:  `Update reason`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiCreateReasonRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		reasonId, _ := cmd.Flags().GetString("reasonId")
		input := &admin_reasons.UpdateReasonParams{
			Body:      body,
			Namespace: namespace,
			ReasonID:  reasonId,
		}
		ok, errOK := adminReasonsService.UpdateReasonShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateReasonCmd.Flags().String("body", "", "Body")
	_ = UpdateReasonCmd.MarkFlagRequired("body")
	UpdateReasonCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateReasonCmd.MarkFlagRequired("namespace")
	UpdateReasonCmd.Flags().String("reasonId", "", "Reason id")
	_ = UpdateReasonCmd.MarkFlagRequired("reasonId")
}
