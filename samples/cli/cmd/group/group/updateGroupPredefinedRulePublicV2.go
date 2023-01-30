// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package group

import (
	"encoding/json"

	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateGroupPredefinedRulePublicV2Cmd represents the UpdateGroupPredefinedRulePublicV2 command
var UpdateGroupPredefinedRulePublicV2Cmd = &cobra.Command{
	Use:   "updateGroupPredefinedRulePublicV2",
	Short: "Update group predefined rule public V2",
	Long:  `Update group predefined rule public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupPredefinedRuleRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		allowedAction, _ := cmd.Flags().GetString("allowedAction")
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.UpdateGroupPredefinedRulePublicV2Params{
			Body:          body,
			AllowedAction: allowedAction,
			GroupID:       groupId,
			Namespace:     namespace,
		}
		ok, err := groupService.UpdateGroupPredefinedRulePublicV2Short(input)
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
	UpdateGroupPredefinedRulePublicV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("body")
	UpdateGroupPredefinedRulePublicV2Cmd.Flags().String("allowedAction", "", "Allowed action")
	_ = UpdateGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("allowedAction")
	UpdateGroupPredefinedRulePublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdateGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("groupId")
	UpdateGroupPredefinedRulePublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGroupPredefinedRulePublicV2Cmd.MarkFlagRequired("namespace")
}
