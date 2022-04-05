// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package dlc

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/d_l_c"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdatePlatformDLCConfigCmd represents the UpdatePlatformDLCConfig command
var UpdatePlatformDLCConfigCmd = &cobra.Command{
	Use:   "updatePlatformDLCConfig",
	Short: "Update platform DLC config",
	Long:  `Update platform DLC config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.PlatformDLCConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &d_l_c.UpdatePlatformDLCConfigParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := dlcService.UpdatePlatformDLCConfigShort(input)
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
	UpdatePlatformDLCConfigCmd.Flags().StringP("body", "", "", "Body")
	UpdatePlatformDLCConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdatePlatformDLCConfigCmd.MarkFlagRequired("namespace")
}
