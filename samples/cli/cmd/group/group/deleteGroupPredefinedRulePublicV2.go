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

// DeleteGroupPredefinedRulePublicV2Cmd represents the DeleteGroupPredefinedRulePublicV2 command
var DeleteGroupPredefinedRulePublicV2Cmd = &cobra.Command{
	Use:   "deleteGroupPredefinedRulePublicV2",
	Short: "Delete group predefined rule public V2",
	Long:  `Delete group predefined rule public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		allowedAction, _ := cmd.Flags().GetString("allowedAction")
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.DeleteGroupPredefinedRulePublicV2Params{
			AllowedAction: allowedAction,
			GroupID:       groupId,
			Namespace:     namespace,
		}
		errNoContent := groupService.DeleteGroupPredefinedRulePublicV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGroupPredefinedRulePublicV2Cmd.Flags().String("allowedAction", "", "Allowed action")
	_ = DeleteGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("allowedAction")
	DeleteGroupPredefinedRulePublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = DeleteGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("groupId")
	DeleteGroupPredefinedRulePublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("namespace")
}
