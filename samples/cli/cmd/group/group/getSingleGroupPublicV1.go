// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package group

import (
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetSingleGroupPublicV1Cmd represents the GetSingleGroupPublicV1 command
var GetSingleGroupPublicV1Cmd = &cobra.Command{
	Use:   "GetSingleGroupPublicV1",
	Short: "Get single group public V1",
	Long:  `Get single group public V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.GetSingleGroupPublicV1Params{
			GroupID:   groupId,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupService.GetSingleGroupPublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetSingleGroupPublicV1Cmd.Flags().StringP("groupId", "gd", " ", "Group id")
	_ = GetSingleGroupPublicV1Cmd.MarkFlagRequired("groupId")
	GetSingleGroupPublicV1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = GetSingleGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
