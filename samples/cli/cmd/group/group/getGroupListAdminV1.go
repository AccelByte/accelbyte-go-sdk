// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package group

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getGroupListAdminV1Cmd represents the getGroupListAdminV1 command
var getGroupListAdminV1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupService.GetGroupListAdminV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getGroupListAdminV1Cmd)
	getGroupListAdminV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getGroupListAdminV1Cmd.MarkFlagRequired("namespace")
	getGroupListAdminV1Cmd.Flags().StringP("configurationCode", "ce", " ", "Configuration code")
	getGroupListAdminV1Cmd.Flags().StringP("groupName", "ge", " ", "Group name")
	getGroupListAdminV1Cmd.Flags().StringP("groupRegion", "gn", " ", "Group region")
	getGroupListAdminV1Cmd.Flags().Int64P("limit", "lt", 20, "Limit")
	getGroupListAdminV1Cmd.Flags().Int64P("offset", "ot", 0, "Offset")
}
