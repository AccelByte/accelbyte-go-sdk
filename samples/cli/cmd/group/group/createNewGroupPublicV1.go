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

// CreateNewGroupPublicV1Cmd represents the CreateNewGroupPublicV1 command
var CreateNewGroupPublicV1Cmd = &cobra.Command{
	Use:   "createNewGroupPublicV1",
	Short: "Create new group public V1",
	Long:  `Create new group public V1`,
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
		input := &group_.CreateNewGroupPublicV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := groupService.CreateNewGroupPublicV1Short(input, nil)
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
	CreateNewGroupPublicV1Cmd.Flags().StringP("body", "", "", "Body")
	_ = CreateNewGroupPublicV1Cmd.MarkFlagRequired("body")
	CreateNewGroupPublicV1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateNewGroupPublicV1Cmd.MarkFlagRequired("namespace")
}
