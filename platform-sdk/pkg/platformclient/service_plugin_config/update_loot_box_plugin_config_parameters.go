// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package service_plugin_config

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

// NewUpdateLootBoxPluginConfigParams creates a new UpdateLootBoxPluginConfigParams object
// with the default values initialized.
func NewUpdateLootBoxPluginConfigParams() *UpdateLootBoxPluginConfigParams {
	var ()
	return &UpdateLootBoxPluginConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateLootBoxPluginConfigParamsWithTimeout creates a new UpdateLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateLootBoxPluginConfigParamsWithTimeout(timeout time.Duration) *UpdateLootBoxPluginConfigParams {
	var ()
	return &UpdateLootBoxPluginConfigParams{

		timeout: timeout,
	}
}

// NewUpdateLootBoxPluginConfigParamsWithContext creates a new UpdateLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateLootBoxPluginConfigParamsWithContext(ctx context.Context) *UpdateLootBoxPluginConfigParams {
	var ()
	return &UpdateLootBoxPluginConfigParams{

		Context: ctx,
	}
}

// NewUpdateLootBoxPluginConfigParamsWithHTTPClient creates a new UpdateLootBoxPluginConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateLootBoxPluginConfigParamsWithHTTPClient(client *http.Client) *UpdateLootBoxPluginConfigParams {
	var ()
	return &UpdateLootBoxPluginConfigParams{
		HTTPClient: client,
	}
}

/*UpdateLootBoxPluginConfigParams contains all the parameters to send to the API endpoint
for the update loot box plugin config operation typically these are written to a http.Request
*/
type UpdateLootBoxPluginConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.LootBoxPluginConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) WithTimeout(timeout time.Duration) *UpdateLootBoxPluginConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) WithContext(ctx context.Context) *UpdateLootBoxPluginConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) WithHTTPClient(client *http.Client) *UpdateLootBoxPluginConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateLootBoxPluginConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) WithBody(body *platformclientmodels.LootBoxPluginConfigUpdate) *UpdateLootBoxPluginConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetBody(body *platformclientmodels.LootBoxPluginConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) WithNamespace(namespace string) *UpdateLootBoxPluginConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update loot box plugin config params
func (o *UpdateLootBoxPluginConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateLootBoxPluginConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
