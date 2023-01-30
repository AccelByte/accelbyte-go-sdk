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

// UpdateGroupCustomRulePublicV2Cmd represents the UpdateGroupCustomRulePublicV2 command
var UpdateGroupCustomRulePublicV2Cmd = &cobra.Command{
	Use:   "updateGroupCustomRulePublicV2",
	Short: "Update group custom rule public V2",
	Long:  `Update group custom rule public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupCustomRuleRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.UpdateGroupCustomRulePublicV2Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupService.UpdateGroupCustomRulePublicV2Short(input)
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
	UpdateGroupCustomRulePublicV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateGroupCustomRulePublicV2Cmd.MarkFlagRequired("body")
	UpdateGroupCustomRulePublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdateGroupCustomRulePublicV2Cmd.MarkFlagRequired("groupId")
	UpdateGroupCustomRulePublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGroupCustomRulePublicV2Cmd.MarkFlagRequired("namespace")
}
