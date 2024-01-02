// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// Get the enum in UpdatePlatformEntitlementConfigParams
const (
	UpdatePlatformEntitlementConfigEpicConstant        = "Epic"
	UpdatePlatformEntitlementConfigGooglePlayConstant  = "GooglePlay"
	UpdatePlatformEntitlementConfigIOSConstant         = "IOS"
	UpdatePlatformEntitlementConfigNintendoConstant    = "Nintendo"
	UpdatePlatformEntitlementConfigOculusConstant      = "Oculus"
	UpdatePlatformEntitlementConfigOtherConstant       = "Other"
	UpdatePlatformEntitlementConfigPlaystationConstant = "Playstation"
	UpdatePlatformEntitlementConfigSteamConstant       = "Steam"
	UpdatePlatformEntitlementConfigXboxConstant        = "Xbox"
)

// NewUpdatePlatformEntitlementConfigParams creates a new UpdatePlatformEntitlementConfigParams object
// with the default values initialized.
func NewUpdatePlatformEntitlementConfigParams() *UpdatePlatformEntitlementConfigParams {
	var ()
	return &UpdatePlatformEntitlementConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdatePlatformEntitlementConfigParamsWithTimeout creates a new UpdatePlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdatePlatformEntitlementConfigParamsWithTimeout(timeout time.Duration) *UpdatePlatformEntitlementConfigParams {
	var ()
	return &UpdatePlatformEntitlementConfigParams{

		timeout: timeout,
	}
}

// NewUpdatePlatformEntitlementConfigParamsWithContext creates a new UpdatePlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdatePlatformEntitlementConfigParamsWithContext(ctx context.Context) *UpdatePlatformEntitlementConfigParams {
	var ()
	return &UpdatePlatformEntitlementConfigParams{

		Context: ctx,
	}
}

// NewUpdatePlatformEntitlementConfigParamsWithHTTPClient creates a new UpdatePlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdatePlatformEntitlementConfigParamsWithHTTPClient(client *http.Client) *UpdatePlatformEntitlementConfigParams {
	var ()
	return &UpdatePlatformEntitlementConfigParams{
		HTTPClient: client,
	}
}

/*UpdatePlatformEntitlementConfigParams contains all the parameters to send to the API endpoint
for the update platform entitlement config operation typically these are written to a http.Request
*/
type UpdatePlatformEntitlementConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EntitlementPlatformConfigUpdate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Platform*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithTimeout(timeout time.Duration) *UpdatePlatformEntitlementConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithContext(ctx context.Context) *UpdatePlatformEntitlementConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithHTTPClient(client *http.Client) *UpdatePlatformEntitlementConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithBody(body *platformclientmodels.EntitlementPlatformConfigUpdate) *UpdatePlatformEntitlementConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetBody(body *platformclientmodels.EntitlementPlatformConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithNamespace(namespace string) *UpdatePlatformEntitlementConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) WithPlatform(platform string) *UpdatePlatformEntitlementConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the update platform entitlement config params
func (o *UpdatePlatformEntitlementConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *UpdatePlatformEntitlementConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
