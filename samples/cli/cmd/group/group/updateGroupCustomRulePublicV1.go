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

// UpdateGroupCustomRulePublicV1Cmd represents the UpdateGroupCustomRulePublicV1 command
var UpdateGroupCustomRulePublicV1Cmd = &cobra.Command{
	Use:   "updateGroupCustomRulePublicV1",
	Short: "Update group custom rule public V1",
	Long:  `Update group custom rule public V1`,
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
		input := &group_.UpdateGroupCustomRulePublicV1Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupService.UpdateGroupCustomRulePublicV1Short(input)
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
	UpdateGroupCustomRulePublicV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateGroupCustomRulePublicV1Cmd.MarkFlagRequired("body")
	UpdateGroupCustomRulePublicV1Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdateGroupCustomRulePublicV1Cmd.MarkFlagRequired("groupId")
	UpdateGroupCustomRulePublicV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateGroupCustomRulePublicV1Cmd.MarkFlagRequired("namespace")
}
