// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	group_ "github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclient/group"
	"github.com/AccelByte/accelbyte-go-sdk/group-sdk/pkg/groupclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/group"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateGroupPredefinedRulePublicV1Cmd represents the updateGroupPredefinedRulePublicV1 command
var updateGroupPredefinedRulePublicV1Cmd = &cobra.Command{
	Use:   "updateGroupPredefinedRulePublicV1",
	Short: "Update group predefined rule public V1",
	Long:  `Update group predefined rule public V1`,
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
		input := &group_.UpdateGroupPredefinedRulePublicV1Params{
			Body:          body,
			AllowedAction: allowedAction,
			GroupID:       groupId,
			Namespace:     namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := groupService.UpdateGroupPredefinedRulePublicV1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateGroupPredefinedRulePublicV1Cmd)
	updateGroupPredefinedRulePublicV1Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = updateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("body")
	updateGroupPredefinedRulePublicV1Cmd.Flags().StringP("allowedAction", "a", " ", "Allowed action")
	_ = updateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("allowedAction")
	updateGroupPredefinedRulePublicV1Cmd.Flags().StringP("groupId", "g", " ", "Group id")
	_ = updateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("groupId")
	updateGroupPredefinedRulePublicV1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("namespace")
}
