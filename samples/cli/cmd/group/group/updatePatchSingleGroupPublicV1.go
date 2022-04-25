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

// UpdatePatchSingleGroupPublicV1Cmd represents the UpdatePatchSingleGroupPublicV1 command
var UpdatePatchSingleGroupPublicV1Cmd = &cobra.Command{
	Use:   "updatePatchSingleGroupPublicV1",
	Short: "Update patch single group public V1",
	Long:  `Update patch single group public V1`,
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
		input := &group_.UpdatePatchSingleGroupPublicV1Params{
			Body:      body,
			GroupID:   groupId,
			Namespace: namespace,
		}
		ok, err := groupService.UpdatePatchSingleGroupPublicV1Short(input, nil)
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
	UpdatePatchSingleGroupPublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = UpdatePatchSingleGroupPublicV1Cmd.MarkFlagRequired("body")
	UpdatePatchSingleGroupPublicV1Cmd.Flags().StringP("groupId", "", "", "Group id")
	_ = UpdatePatchSingleGroupPublicV1Cmd.MarkFlagRequired("groupId")
	UpdatePatchSingleGroupPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdatePatchSingleGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
