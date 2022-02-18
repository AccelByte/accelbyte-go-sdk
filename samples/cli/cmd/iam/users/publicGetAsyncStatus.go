// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetAsyncStatusCmd represents the PublicGetAsyncStatus command
var PublicGetAsyncStatusCmd = &cobra.Command{
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
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	PublicGetAsyncStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetAsyncStatusCmd.MarkFlagRequired("namespace")
	PublicGetAsyncStatusCmd.Flags().StringP("requestId", "", "", "Request id")
	_ = PublicGetAsyncStatusCmd.MarkFlagRequired("requestId")
}
