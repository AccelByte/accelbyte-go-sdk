// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminV1

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclient/admin_v1"
	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/loginqueue"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateConfigurationCmd represents the AdminUpdateConfiguration command
var AdminUpdateConfigurationCmd = &cobra.Command{
	Use:   "adminUpdateConfiguration",
	Short: "Admin update configuration",
	Long:  `Admin update configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminV1Service := &loginqueue.AdminV1Service{
			Client:          factory.NewLoginqueueClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *loginqueueclientmodels.ApimodelsConfigurationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_v1.AdminUpdateConfigurationParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := adminV1Service.AdminUpdateConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateConfigurationCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigurationCmd.MarkFlagRequired("body")
	AdminUpdateConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigurationCmd.MarkFlagRequired("namespace")
}
