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

// GetListGroupByIDsV2Cmd represents the GetListGroupByIDsV2 command
var GetListGroupByIDsV2Cmd = &cobra.Command{
	Use:   "getListGroupByIDsV2",
	Short: "Get list group by I ds V2",
	Long:  `Get list group by I ds V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		groupService := &group.GroupService{
			Client:          factory.NewGroupClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *groupclientmodels.ModelsGetGroupListRequestV2
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &group_.GetListGroupByIDsV2Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := groupService.GetListGroupByIDsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetListGroupByIDsV2Cmd.Flags().String("body", "", "Body")
	_ = GetListGroupByIDsV2Cmd.MarkFlagRequired("body")
	GetListGroupByIDsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = GetListGroupByIDsV2Cmd.MarkFlagRequired("namespace")
}
