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

// UpdatePatchSingleGroupPublicV2Cmd represents the UpdatePatchSingleGroupPublicV2 command
var UpdatePatchSingleGroupPublicV2Cmd = &cobra.Command{
	Use:   "updatePatchSingleGroupPublicV2",
	Short: "Update patch single group public V2",
	Long:  `Update patch single group public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsUpdateGroupRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		groupId, _ := cmd.Flags().GetString("groupId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.UpdatePatchSingleGroupPublicV2Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupService.UpdatePatchSingleGroupPublicV2Short(input)
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
	UpdatePatchSingleGroupPublicV2Cmd.Flags().String("body", "", "Body")
	_ = UpdatePatchSingleGroupPublicV2Cmd.MarkFlagRequired("body")
	UpdatePatchSingleGroupPublicV2Cmd.Flags().String("groupId", "", "Group id")
	_ = UpdatePatchSingleGroupPublicV2Cmd.MarkFlagRequired("groupId")
	UpdatePatchSingleGroupPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdatePatchSingleGroupPublicV2Cmd.MarkFlagRequired("namespace")
}
