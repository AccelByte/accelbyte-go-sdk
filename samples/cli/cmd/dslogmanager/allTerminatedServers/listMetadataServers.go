// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package allTerminatedServers

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclient/all_terminated_servers"
	"github.com/AccelByte/accelbyte-go-sdk/dslogmanager-sdk/pkg/dslogmanagerclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dslogmanager"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListMetadataServersCmd represents the ListMetadataServers command
var ListMetadataServersCmd = &cobra.Command{
	Use:   "listMetadataServers",
	Short: "List metadata servers",
	Long:  `List metadata servers`,
	RunE: func(cmd *cobra.Command, args []string) error {
		allTerminatedServersService := &dslogmanager.AllTerminatedServersService{
			Client:          factory.NewDslogmanagerClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dslogmanagerclientmodels.ModelsMetadataServersRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &all_terminated_servers.ListMetadataServersParams{
			Body: body,
		}
		ok, errOK := allTerminatedServersService.ListMetadataServersShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListMetadataServersCmd.Flags().String("body", "", "Body")
	_ = ListMetadataServersCmd.MarkFlagRequired("body")
}
