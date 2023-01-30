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

// CreateNewGroupPublicV2Cmd represents the CreateNewGroupPublicV2 command
var CreateNewGroupPublicV2Cmd = &cobra.Command{
	Use:   "createNewGroupPublicV2",
	Short: "Create new group public V2",
	Long:  `Create new group public V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsPublicCreateNewGroupRequestV1
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.CreateNewGroupPublicV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := groupService.CreateNewGroupPublicV2Short(input)
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
	CreateNewGroupPublicV2Cmd.Flags().String("body", "", "Body")
	_ = CreateNewGroupPublicV2Cmd.MarkFlagRequired("body")
	CreateNewGroupPublicV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = CreateNewGroupPublicV2Cmd.MarkFlagRequired("namespace")
}
