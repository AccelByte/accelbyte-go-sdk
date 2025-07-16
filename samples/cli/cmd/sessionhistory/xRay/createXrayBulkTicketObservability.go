// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package xRay

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/x_ray"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateXrayBulkTicketObservabilityCmd represents the CreateXrayBulkTicketObservability command
var CreateXrayBulkTicketObservabilityCmd = &cobra.Command{
	Use:   "createXrayBulkTicketObservability",
	Short: "Create xray bulk ticket observability",
	Long:  `Create xray bulk ticket observability`,
	RunE: func(cmd *cobra.Command, args []string) error {
		xRayService := &sessionhistory.XRayService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionhistoryclientmodels.ApimodelsXRayBulkTicketObservabilityRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &x_ray.CreateXrayBulkTicketObservabilityParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := xRayService.CreateXrayBulkTicketObservabilityShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	CreateXrayBulkTicketObservabilityCmd.Flags().String("body", "", "Body")
	_ = CreateXrayBulkTicketObservabilityCmd.MarkFlagRequired("body")
	CreateXrayBulkTicketObservabilityCmd.Flags().String("namespace", "", "Namespace")
	_ = CreateXrayBulkTicketObservabilityCmd.MarkFlagRequired("namespace")
}
