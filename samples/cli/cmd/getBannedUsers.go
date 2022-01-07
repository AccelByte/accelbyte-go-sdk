// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getBannedUsers represents the getBannedUsers command
var getBannedUsers = &cobra.Command{
	Use:   "getBannedUsers",
	Short: "Admin Get banned users",
	Long:  `Admin Get banned users `,
	RunE: func(cmd *cobra.Command, args []string) error {
		bansService := &iam.BansService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		activeOnly, err := cmd.Flags().GetBool("activeOnly")
		if err != nil {
			return err
		}
		banType := cmd.Flag("banType").Value.String()
		namespace := cmd.Flag("namespace").Value.String()
		limit, err := cmd.Flags().GetInt64("limit")
		if err != nil {
			return err
		}
		offset, err := cmd.Flags().GetInt64("offset")
		if err != nil {
			return err
		}
		input := bans.AdminGetBannedUsersV3Params{
			ActiveOnly: &activeOnly,
			BanType:    &banType,
			Limit:      &limit,
			Namespace:  namespace,
			Offset:     &offset,
		}
		//nolint:staticcheck // SA1019 To be deprecated later
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := bansService.AdminGetBannedUsersV3(&input)
		if err != nil {
			logrus.Error(err)
		} else {
			response, err := json.Marshal(ok)
			if err != nil {
				logrus.Error(err)
			} else {
				logrus.Infof("Response %s", response)
			}
		}
		return nil
	},
}

func init() {
	rootCmd.AddCommand(getBannedUsers)
	getBannedUsers.Flags().BoolP("activeOnly", "a", false, "Active Only. a Boolean value")
	_ = getBannedUsers.MarkFlagRequired("activeOnly")
	getBannedUsers.Flags().StringP("banType", "b", "", "Ban Type")
	_ = getBannedUsers.MarkFlagRequired("banType")
	getBannedUsers.Flags().Int64P("limit", "l", -1, "limit")
	_ = getBannedUsers.MarkFlagRequired("limit")
	getBannedUsers.Flags().StringP("namespace", "n", "", "namespace")
	_ = getBannedUsers.MarkFlagRequired("namespace")
	getBannedUsers.Flags().Int64P("offset", "o", -1, "offset")
	_ = getBannedUsers.MarkFlagRequired("offset")
}
