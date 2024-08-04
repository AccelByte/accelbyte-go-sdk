// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RunZombieCleanerRequestHandlerCmd represents the RunZombieCleanerRequestHandler command
var RunZombieCleanerRequestHandlerCmd = &cobra.Command{
	Use:   "runZombieCleanerRequestHandler",
	Short: "Run zombie cleaner request handler",
	Long:  `Run zombie cleaner request handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsDeleteZombieRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin.RunZombieCleanerRequestHandlerParams{
			Body:      body,
			Namespace: namespace,
		}
		errNoContent := adminService.RunZombieCleanerRequestHandlerShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	RunZombieCleanerRequestHandlerCmd.Flags().String("body", "", "Body")
	_ = RunZombieCleanerRequestHandlerCmd.MarkFlagRequired("body")
	RunZombieCleanerRequestHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = RunZombieCleanerRequestHandlerCmd.MarkFlagRequired("namespace")
}
