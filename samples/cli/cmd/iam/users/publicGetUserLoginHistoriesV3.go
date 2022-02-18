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

// PublicGetUserLoginHistoriesV3Cmd represents the PublicGetUserLoginHistoriesV3 command
var PublicGetUserLoginHistoriesV3Cmd = &cobra.Command{
	Use:   "publicGetUserLoginHistoriesV3",
	Short: "Public get user login histories V3",
	Long:  `Public get user login histories V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		after, _ := cmd.Flags().GetFloat64("after")
		before, _ := cmd.Flags().GetFloat64("before")
		limit, _ := cmd.Flags().GetFloat64("limit")
		input := &users.PublicGetUserLoginHistoriesV3Params{
			Namespace: namespace,
			UserID:    userId,
			After:     &after,
			Before:    &before,
			Limit:     &limit,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicGetUserLoginHistoriesV3(input)
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
	PublicGetUserLoginHistoriesV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("namespace")
	PublicGetUserLoginHistoriesV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicGetUserLoginHistoriesV3Cmd.MarkFlagRequired("userId")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Float64P("after", "", 0, "After")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Float64P("before", "", 0, "Before")
	PublicGetUserLoginHistoriesV3Cmd.Flags().Float64P("limit", "", 20, "Limit")
}
