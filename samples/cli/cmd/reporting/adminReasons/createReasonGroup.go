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

// CreateReasonGroupCmd represents the CreateReasonGroup command
var CreateReasonGroupCmd = &cobra.Command{
	Use:   "createReasonGroup",
	Short: "Create reason group",
	Long:  `Create reason group`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminReasonsService := &reporting.AdminReasonsService{
			Client:          factory.NewReportingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *reportingclientmodels.RestapiCreateReasonGroupRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_reasons.CreateReasonGroupParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := adminReasonsService.CreateReasonGroupShort(input)
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
	CreateReasonGroupCmd.Flags().String("body", "", "Body")
	_ = CreateReasonGroupCmd.MarkFlagRequired("body")
	CreateReasonGroupCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateReasonGroupCmd.MarkFlagRequired("namespace")
}
