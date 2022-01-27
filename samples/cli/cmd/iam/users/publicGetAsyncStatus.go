// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetAsyncStatusCmd represents the publicGetAsyncStatus command
var publicGetAsyncStatusCmd = &cobra.Command{
	Use:   "publicGetAsyncStatus",
	Short: "Public get async status",
	Long:  `Public get async status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		requestId, _ := cmd.Flags().GetString("requestId")
		input := &users.PublicGetAsyncStatusParams{
			Namespace: namespace,
			RequestID: requestId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetAsyncStatus(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetAsyncStatusCmd)
	publicGetAsyncStatusCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetAsyncStatusCmd.MarkFlagRequired("namespace")
	publicGetAsyncStatusCmd.Flags().StringP("requestId", "rd", " ", "Request id")
	_ = publicGetAsyncStatusCmd.MarkFlagRequired("requestId")
}
