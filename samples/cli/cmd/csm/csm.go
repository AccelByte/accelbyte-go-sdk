// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package csm

import (
	"github.com/AccelByte/sample-apps/cmd/csm/app"
	"github.com/AccelByte/sample-apps/cmd/csm/appV2"
	"github.com/AccelByte/sample-apps/cmd/csm/configuration"
	"github.com/AccelByte/sample-apps/cmd/csm/configurationV2"
	"github.com/AccelByte/sample-apps/cmd/csm/deployment"
	"github.com/AccelByte/sample-apps/cmd/csm/deploymentV2"
	"github.com/AccelByte/sample-apps/cmd/csm/image"
	"github.com/AccelByte/sample-apps/cmd/csm/imageV2"
	"github.com/AccelByte/sample-apps/cmd/csm/messages"
	"github.com/AccelByte/sample-apps/cmd/csm/notificationSubscription"
	"github.com/AccelByte/sample-apps/cmd/csm/notificationSubscriptionV3"
	"github.com/AccelByte/sample-apps/cmd/csm/resourcesLimits"
	"github.com/spf13/cobra"
)

// CsmCmd represents the service's child command
var CsmCmd = &cobra.Command{
	Use:   "Csm",
	Short: "Csm to get all the commands",
}

func init() {
	CsmCmd.AddCommand(app.GetAppListV1Cmd)
	CsmCmd.AddCommand(app.GetAppV1Cmd)
	CsmCmd.AddCommand(app.CreateAppV1Cmd)
	CsmCmd.AddCommand(app.DeleteAppV1Cmd)
	CsmCmd.AddCommand(app.UpdateAppV1Cmd)
	CsmCmd.AddCommand(deployment.CreateDeploymentV1Cmd)
	CsmCmd.AddCommand(image.GetAppImageListV1Cmd)
	CsmCmd.AddCommand(image.DeleteAppImagesV1Cmd)
	CsmCmd.AddCommand(app.GetAppReleaseV1Cmd)
	CsmCmd.AddCommand(configuration.GetListOfSecretsV1Cmd)
	CsmCmd.AddCommand(configuration.SaveSecretV1Cmd)
	CsmCmd.AddCommand(configuration.UpdateSecretV1Cmd)
	CsmCmd.AddCommand(configuration.DeleteSecretV1Cmd)
	CsmCmd.AddCommand(app.StartAppV1Cmd)
	CsmCmd.AddCommand(app.StopAppV1Cmd)
	CsmCmd.AddCommand(configuration.GetListOfVariablesV1Cmd)
	CsmCmd.AddCommand(configuration.SaveVariableV1Cmd)
	CsmCmd.AddCommand(configuration.UpdateVariableV1Cmd)
	CsmCmd.AddCommand(configuration.DeleteVariableV1Cmd)
	CsmCmd.AddCommand(deployment.GetListOfDeploymentV1Cmd)
	CsmCmd.AddCommand(deployment.GetDeploymentV1Cmd)
	CsmCmd.AddCommand(deployment.DeleteDeploymentV1Cmd)
	CsmCmd.AddCommand(messages.PublicGetMessagesCmd)
	CsmCmd.AddCommand(appV2.GetAppListV2Cmd)
	CsmCmd.AddCommand(appV2.GetAppV2Cmd)
	CsmCmd.AddCommand(appV2.CreateAppV2Cmd)
	CsmCmd.AddCommand(appV2.DeleteAppV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppV2Cmd)
	CsmCmd.AddCommand(deploymentV2.CreateDeploymentV2Cmd)
	CsmCmd.AddCommand(imageV2.GetAppImageListV2Cmd)
	CsmCmd.AddCommand(imageV2.DeleteAppImagesV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppResourcesV2Cmd)
	CsmCmd.AddCommand(appV2.UpdateAppResourcesResourceLimitFormV2Cmd)
	CsmCmd.AddCommand(configurationV2.GetListOfSecretsV2Cmd)
	CsmCmd.AddCommand(configurationV2.SaveSecretV2Cmd)
	CsmCmd.AddCommand(configurationV2.UpdateSecretV2Cmd)
	CsmCmd.AddCommand(configurationV2.DeleteSecretV2Cmd)
	CsmCmd.AddCommand(appV2.StartAppV2Cmd)
	CsmCmd.AddCommand(appV2.StopAppV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.GetNotificationSubscriberListV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.BulkSaveSubscriptionAppNotificationV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.SubscribeAppNotificationV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.GetSubscriptionV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.SubscribeV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.UnsubscribeV2HandlerCmd)
	CsmCmd.AddCommand(notificationSubscription.DeleteSubscriptionAppNotificationByUserIDV2Cmd)
	CsmCmd.AddCommand(notificationSubscription.DeleteSubscriptionAppNotificationV2Cmd)
	CsmCmd.AddCommand(configurationV2.GetListOfVariablesV2Cmd)
	CsmCmd.AddCommand(configurationV2.SaveVariableV2Cmd)
	CsmCmd.AddCommand(configurationV2.UpdateVariableV2Cmd)
	CsmCmd.AddCommand(configurationV2.DeleteVariableV2Cmd)
	CsmCmd.AddCommand(deploymentV2.GetListOfDeploymentV2Cmd)
	CsmCmd.AddCommand(deploymentV2.GetDeploymentV2Cmd)
	CsmCmd.AddCommand(deploymentV2.DeleteDeploymentV2Cmd)
	CsmCmd.AddCommand(resourcesLimits.GetResourcesLimitsCmd)
	CsmCmd.AddCommand(notificationSubscriptionV3.GetNotificationSubscriberListV3Cmd)
	CsmCmd.AddCommand(notificationSubscriptionV3.DeleteSubscriptionAppNotificationV3Cmd)
}
