// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// UpdateGroupPredefinedRulePublicV1Cmd represents the UpdateGroupPredefinedRulePublicV1 command
var UpdateGroupPredefinedRulePublicV1Cmd = &cobra.Command{
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
		ok, err := groupService.UpdateGroupPredefinedRulePublicV1Short(input)
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
	UpdateGroupPredefinedRulePublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("body")
	UpdateGroupPredefinedRulePublicV1Cmd.Flags().StringP("allowedAction", "", "", "Allowed action")
	_ = UpdateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("allowedAction")
	UpdateGroupPredefinedRulePublicV1Cmd.Flags().StringP("groupId", "", "", "Group id")
	_ = UpdateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("groupId")
	UpdateGroupPredefinedRulePublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateGroupPredefinedRulePublicV1Cmd.MarkFlagRequired("namespace")
}
