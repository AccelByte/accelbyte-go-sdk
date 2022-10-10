// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package keyGroup

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/key_group"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetKeyGroupByBoothNameCmd represents the GetKeyGroupByBoothName command
var GetKeyGroupByBoothNameCmd = &cobra.Command{
	Use:   "getKeyGroupByBoothName",
	Short: "Get key group by booth name",
	Long:  `Get key group by booth name`,
	RunE: func(cmd *cobra.Command, args []string) error {
		keyGroupService := &platform.KeyGroupService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		boothName, _ := cmd.Flags().GetString("boothName")
		input := &key_group.GetKeyGroupByBoothNameParams{
			Namespace: namespace,
			BoothName: boothName,
		}
		ok, err := keyGroupService.GetKeyGroupByBoothNameShort(input)
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
	GetKeyGroupByBoothNameCmd.Flags().String("namespace", "", "Namespace")
	_ = GetKeyGroupByBoothNameCmd.MarkFlagRequired("namespace")
	GetKeyGroupByBoothNameCmd.Flags().String("boothName", "", "Booth name")
	_ = GetKeyGroupByBoothNameCmd.MarkFlagRequired("boothName")
}
