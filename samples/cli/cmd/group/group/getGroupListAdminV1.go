// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetGroupListAdminV1Cmd represents the GetGroupListAdminV1 command
var GetGroupListAdminV1Cmd = &cobra.Command{
	Use:   "getGroupListAdminV1",
	Short: "Get group list admin V1",
	Long:  `Get group list admin V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		configurationCode, _ := cmd.Flags().GetString("configurationCode")
		groupName, _ := cmd.Flags().GetString("groupName")
		groupRegion, _ := cmd.Flags().GetString("groupRegion")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &group_.GetGroupListAdminV1Params{
			Namespace:         namespace,
			ConfigurationCode: &configurationCode,
			GroupName:         &groupName,
			GroupRegion:       &groupRegion,
			Limit:             &limit,
			Offset:            &offset,
		}
		ok, errOK := groupService.GetGroupListAdminV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetGroupListAdminV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetGroupListAdminV1Cmd.MarkFlagRequired("namespace")
	GetGroupListAdminV1Cmd.Flags().String("configurationCode", "", "Configuration code")
	GetGroupListAdminV1Cmd.Flags().String("groupName", "", "Group name")
	GetGroupListAdminV1Cmd.Flags().String("groupRegion", "", "Group region")
	GetGroupListAdminV1Cmd.Flags().Int64("limit", 20, "Limit")
	GetGroupListAdminV1Cmd.Flags().Int64("offset", 0, "Offset")
}
