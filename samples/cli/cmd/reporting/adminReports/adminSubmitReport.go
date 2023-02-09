// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminReports

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reports"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/reporting"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminSubmitReportCmd represents the AdminSubmitReport command
var AdminSubmitReportCmd = &cobra.Command{
	Use:   "adminSubmitReport",
	Short: "Admin submit report",
	Long:  `Admin submit report`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReportsService := &reporting.AdminReportsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiSubmitReportRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reports.AdminSubmitReportParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := adminReportsService.AdminSubmitReportShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminSubmitReportCmd.Flags().String("body", "", "Body")
	_ = AdminSubmitReportCmd.MarkFlagRequired("body")
	AdminSubmitReportCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminSubmitReportCmd.MarkFlagRequired("namespace")
}
