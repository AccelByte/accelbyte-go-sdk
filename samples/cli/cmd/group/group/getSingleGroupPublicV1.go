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

// GetSingleGroupPublicV1Cmd represents the GetSingleGroupPublicV1 command
var GetSingleGroupPublicV1Cmd = &cobra.Command{
	Use:   "getSingleGroupPublicV1",
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
		ok, err := groupService.GetSingleGroupPublicV1Short(input)
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
	GetSingleGroupPublicV1Cmd.Flags().String("groupId", "", "Group id")
	_ = GetSingleGroupPublicV1Cmd.MarkFlagRequired("groupId")
	GetSingleGroupPublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetSingleGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
