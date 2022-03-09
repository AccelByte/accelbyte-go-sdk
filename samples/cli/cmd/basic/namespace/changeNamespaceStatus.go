// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package namespace

import (
	"encoding/json"
	namespace_ "github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ChangeNamespaceStatusCmd represents the ChangeNamespaceStatus command
var ChangeNamespaceStatusCmd = &cobra.Command{
	Use:   "changeNamespaceStatus",
	Short: "Change namespace status",
	Long:  `Change namespace status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.NamespaceStatusUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &namespace_.ChangeNamespaceStatusParams{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := namespaceService.ChangeNamespaceStatus(input)
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
	ChangeNamespaceStatusCmd.Flags().StringP("body", "", "", "Body")
	ChangeNamespaceStatusCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ChangeNamespaceStatusCmd.MarkFlagRequired("namespace")
}
