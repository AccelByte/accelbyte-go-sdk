// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package roles

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetRolesV3Cmd represents the PublicGetRolesV3 command
var PublicGetRolesV3Cmd = &cobra.Command{
	Use:   "publicGetRolesV3",
	Short: "Public get roles V3",
	Long:  `Public get roles V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rolesService := &iam.RolesService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		after, _ := cmd.Flags().GetString("after")
		before, _ := cmd.Flags().GetString("before")
		isWildcard, _ := cmd.Flags().GetBool("isWildcard")
		limit, _ := cmd.Flags().GetInt64("limit")
		input := &roles.PublicGetRolesV3Params{
			After:      &after,
			Before:     &before,
			IsWildcard: &isWildcard,
			Limit:      &limit,
		}
		ok, errOK := rolesService.PublicGetRolesV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetRolesV3Cmd.Flags().String("after", "0", "After")
	PublicGetRolesV3Cmd.Flags().String("before", "0", "Before")
	PublicGetRolesV3Cmd.Flags().Bool("isWildcard", false, "Is wildcard")
	PublicGetRolesV3Cmd.Flags().Int64("limit", 20, "Limit")
}
