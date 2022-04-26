// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userAction

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserStatusCmd represents the GetUserStatus command
var GetUserStatusCmd = &cobra.Command{
	Use:   "getUserStatus",
	Short: "Get user status",
	Long:  `Get user status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userActionService := &basic.UserActionService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_action.GetUserStatusParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userActionService.GetUserStatusShort(input)
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
	GetUserStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserStatusCmd.MarkFlagRequired("namespace")
	GetUserStatusCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserStatusCmd.MarkFlagRequired("userId")
}
